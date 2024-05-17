import Foundation
//Example -1
class Person {
    var name: String
    var age: Int
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    func selfIncreaseAge() {
        self.age += 1
    }
}
let foo = Person(name: "ruchi", age: 23)
print(foo)
foo.age
foo.name
foo.selfIncreaseAge()
foo.age
foo.selfIncreaseAge()
foo.selfIncreaseAge()
foo.selfIncreaseAge()
foo.age
let bar = foo
foo.age
bar.age
bar.selfIncreaseAge()
bar.age
if foo === bar {
    "foo and bar point to the same memory"
} else {
    "They don't point to the same memory"
}
//Example -2
//class Person1: Equatable {
//    static func == (lhs: Person1, rhs: Person1) -> Bool {
//        <#code#>
//    }
//    
//    var name: String
//    var age: Int
//    init(name: String, age: Int) {
//        self.name = name
//        self.age = age
//    }
//    func selfIncreaseAge1() {
//        self.age += 1
//    }
//}
//Example -3
class Vechicle {
    func goVroom(){
        "vroom vroom"
    }
}
class Car: Vechicle {
    
}
let cars = Car()
cars.goVroom()
// Example -3
class Person2{
    private(set) var age: Int
    init (age: Int) {
        self.age = age
    }
    func increaseAge(){
        self.age+=1
    }
}
let baz = Person2(age:20)
baz.age
baz.increaseAge()
baz.age
//Example -4
class Tesla {
    let manufacturer = "Tesla"
    let model: String
    let year: Int
    init (){
        self.model = "X"
        self.year = 2022
    }
    init (model: String, year: Int) {
        self.model = model
        self.year = year
    }
    convenience init (model: String) {
        self.init(model: model, year: 2023)
    }
}
class TeslaModel: Tesla {
    override init(){
        super.init(model: "Y", year: 4)
    }
}
let modelY = TeslaModel()
modelY.manufacturer
modelY.year
modelY.model
let fooBar = Person2(age: 222)
fooBar.age
func doSomething (with person: Person2){
    person.increaseAge()
}
doSomething(with: fooBar)
fooBar.age
//Example -5
class MyName {
    init(){
        "in"
    }
    func doSomething (){
        "do do "
    }
    deinit {
        "de"
    }
}
let my = {
    let myClass = MyName()
    myClass.doSomething()
}
my()

