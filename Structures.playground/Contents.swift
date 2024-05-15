import Foundation
//Example -1
struct Person {
    let name: String
    let age: Int
    
}
let foo = Person(name: "Ruchika", age: 23)
print(foo,foo.age,foo.name)
foo.age
foo.name
struct Person1 {
    let name : String
    let age: Int
    let height: Int
}
let foo1 = Person1(name: "Priya", age: 22, height: 5)
print(foo1)
//Example -2
struct ComputerInfo {
    let name: String
    let manufacture: String
    init(name: String, manufacture: String) {
        self.name = name
        self.manufacture = manufacture
    }
}
let fooComputer = ComputerInfo(name: "computer-1", manufacture: "1990")
let fooComputer1 = ComputerInfo(name: "Computer -11", manufacture: "1990")
// another

struct Person2 {
    let name: String
    let age: Int
    init(name: String = "Ruchika", age: Int) {
        self.name = name
        self.age = age
    }
}

let foo3 = Person2(age: 24) // it give the name as ruchika because it set as by default
print(foo3)
let foo4 = Person2(name: "Priya", age: 2)
print(foo4)
//Example -3
struct Person4 {
    let name: String
    let age: Int = 23
}
let foo5 = Person2(name: "Ruchika",age: 22)
print(foo5)
//Example -4
struct Person3 {
    let firstName: String
    let lastName: String
//    let fullName: String = "\(firstName) \(lastName)"
    // cannot use instance member 'firstName' within property
//    let fullName: String
//    init(firstName: String, lastName: String) {
//        self.firstName = firstName
//        self.lastName = lastName
//        self.fullName = "\(firstName) \(lastName)"
//    }
//    ther is another way to do so
    var fullName: String {
        "\(firstName) \(lastName)"
    }
}
let value = Person3(firstName: "Ruchika", lastName: "Sharma")
print(value.fullName)
//Example -5
struct Car {
    var currentSpeed: Int
    mutating func drive(speed: Int){
        "Driving..."
        currentSpeed = speed
    }
}
let immutableCar = Car(currentSpeed: 10)
//immutableCar.drive(speed: 20)
print(immutableCar)
//another way
var mutableCar = Car(currentSpeed: 30)
mutableCar.drive(speed: 10)
mutableCar.currentSpeed
print(mutableCar, mutableCar.currentSpeed)

let copy = mutableCar
mutableCar.currentSpeed
mutableCar.drive(speed: 40)
mutableCar.currentSpeed
copy.currentSpeed
//Example -6
struct LivingThing {
    init(){
        "I'm a living thing"
    }
}
//struct Animal: LivingThing {
//    
//}
//Example -7
struct Bike{
    let manufacture: String
    var currentSpeed: String
}
let bike1 = Bike(manufacture: "Hello", currentSpeed: "20")
var bike2 = bike1
print(bike1, bike2)
bike2.currentSpeed = "40"
print(bike1.currentSpeed, bike2.currentSpeed)
// another way
struct Bike1 {
    let manufacture: String
    let currentSpeed: String
    func copy(currentSpeed: String) -> Bike1 {
        Bike1(manufacture: self.manufacture, currentSpeed: currentSpeed)
    }
}
let bike = Bike1(manufacture: "hey", currentSpeed: "byee")
print(bike)
let bikeBike = bike.copy(currentSpeed: "bi")
print(bikeBike, "123");
