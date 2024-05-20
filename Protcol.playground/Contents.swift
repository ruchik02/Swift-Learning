import Foundation
//Example -1
protocol CanBreathe {
    func breathe()
}
struct Animal: CanBreathe {
    func breathe() {
        "Animal breathing..."
    }
}
struct Person: CanBreathe {
    func breathe() {
        "Person breathing..."
    }
}

let dog = Animal()
dog.breathe()
let foo = Person()
foo.breathe()
//Example -2
protocol canJump {
    func jump()
}
extension canJump {
    func jump(){
        "Jumping..."
    }
}
struct Cat: canJump {
    func jump() {
       "Hello"
    }
}
let whiskers = Cat()
whiskers.jump()
//Example -3
protocol HasName {
    var name: String { get }
    var age: Int { get set }
}
extension HasName {
    func describeMe() -> String {
        "Your name is \(name) and you are \(age) years old"
    }
    mutating func increaseAge() {
        self.age += 2
    }
}
struct Dog: HasName {
    let name: String
    var age: Int
}
var woof = Dog(name: "Bruno", age: 4)
woof.name
woof.age
woof.age += 2
woof.age
woof.describeMe()
woof.increaseAge()
woof.age
//Example -4
protocol Vechicle {
    var speed: Int { get set}
    mutating func increaseSpeed (by value: Int)
}
extension Vechicle {
    mutating func increaseSpeed (by value: Int) {
        self.speed += value
}
}
struct Bike: Vechicle {
    var speed: Int
    init() {
        self.speed = 0
    }
}
var bike = Bike()
bike.speed
bike.increaseSpeed(by: 10)
bike.speed
//Example -5
func describe(obj: Any) {
    if obj is Vechicle {
        "obj conforms to the vechicle protocol"
    } else {
        "obj does Not conform to the Vechicle protocol"
    }
}
describe(obj: bike)

func increaseSpeedIfVechicle(obj: Any) {
    if var vechicle = obj as? Vechicle {
        vechicle.speed
        vechicle.increaseSpeed(by: 10)
        vechicle.speed
    } else {
        "This was not a vechicle"
    }
}
increaseSpeedIfVechicle(obj: bike)
