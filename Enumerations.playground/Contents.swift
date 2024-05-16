import Foundation
//Example -1
//struct Animal {
//    let type: String
//    init(type: String) {
//        if(type == "Rabbit" || type == "Cat" || type == "Dog"){
//            self.type = type
//        } else {
//            preconditionFailure()
//        }
//    }
//}
//Example -2
enum Animal {
    case cat, dog, rabbit
}
let cat = Animal.cat
let dog = Animal.dog
let rabbit = Animal.rabbit
print(cat,dog,rabbit)

if cat == Animal.cat{
    "This is a cat"
} else if cat == Animal.dog {
    "This is a dog"
} else {
    "This is a rabbit"
}
//Example -3
switch cat {
case .cat:
   print("This is a cat")
case .dog:
    print("This is a dog")
case .rabbit:
    print("This is a rabbit")
}
//another way
switch dog {
case .cat:
   print("This is a cat")
case .dog:
    print("This is a dog")
default:
    print("This is something else")
}
//Example -4
func describeAnimal (_ animal: Animal) {
    switch animal {
    case .cat:
       print("This is a cat")
    case .dog:
        print("This is a dog")
    default:
        print("This is something else")
    }
}
describeAnimal(rabbit)
enum shortCut {
    case fileOrFolder(path: URL, name: String)
    case wwwUrl(url: URL)
    case song(artist: String, songName: String)
}
let wwwApples = shortCut.wwwUrl(url: URL(string: "https://apple.com")!)
let wwwApple = shortCut.fileOrFolder(path: URL(string: "https://apple.com")! , name: "ruchika")
print(wwwApple)
switch wwwApple {
case .fileOrFolder(path: let path, name: let name):
    path
    name
    break
case .wwwUrl(url: let url):
    url
    break
case .song(artist: let artist, songName: let songName):
    artist
    songName
    break
}
//Example -5
switch wwwApples {
case let .fileOrFolder(path: path, name: name):
    path
    name
    break
case let .wwwUrl(url: url):
    url
    break
case let .song(artist: artist, songName: songName):
    artist
    songName
    break
}
if case let .wwwUrl(url) = wwwApple {
    url
}
let withoutYou = shortCut.song(artist: "Ranbir", songName: "abc")
if case let .song(_, songName) = withoutYou {
    songName
}
//Example -6
enum Vechicle {
    case car(manufacture: String, year: Int)
    case bike(manufacture: String, model: String)
    case bus(manufacture: String, color: String)
}
let bike = Vechicle.bike(manufacture: "Honda", model: "demo")
let car = Vechicle.car(manufacture: "Tesla", year: 2023)
let bus = Vechicle.bus(manufacture: "bus", color: "red")

switch car {
case let .car(manufacture: manufacture, _):
    manufacture
case let .bike(manufacture: manufacture, _):
    manufacture
case let .bus(manufacture: manufacture, _):
    manufacture
}

switch bike {
case let .car(manufacture: manufacture, _):
    manufacture
case let .bike(manufacture: manufacture, _):
    manufacture
case let .bus(manufacture: manufacture, _):
    manufacture
}

func getManufacture(from vechicle: Vechicle) -> String {
    switch vechicle {
    case let .car(manufacture: manufacture, _):
       return manufacture
    case let .bike(manufacture: manufacture, _):
        return manufacture
    case let .bus(manufacture: manufacture, _):
        return manufacture
    }
}
getManufacture(from: bus)
getManufacture(from: car)
//Example -7
enum Vechicle1 {
    case car(manufacture: String, year: Int)
    case bike(manufacture: String, model: String)
    case bus(manufacture: String, color: String)
    func getManufacture1() -> String {
        switch self {
        case let .car(manufacture: manufacture, _):
           return manufacture
        case let .bike(manufacture: manufacture, _):
            return manufacture
        case let .bus(manufacture: manufacture, _):
            return manufacture
        }
    }
}

let bike1 = Vechicle1.bike(manufacture: "Honda1", model: "demo")
let car1 = Vechicle1.car(manufacture: "Tesla1", year: 2023)
let bus1 = Vechicle1.bus(manufacture: "bus1", color: "red")
car1.getManufacture1()
//Example -8
enum Vechicle2 {
    case car(manufacture: String, year: Int)
    case bike(manufacture: String, model: String)
    case bus(manufacture: String, color: String)
    var getManufacture2: String {
        switch self {
        case let .car(manufacture: manufacture, _):
           return manufacture
        case let .bike(manufacture: manufacture, _):
            return manufacture
        case let .bus(manufacture: manufacture, _):
            return manufacture
        }
    }
}
let bike2 = Vechicle2.bike(manufacture: "Honda4", model: "demo")
let car2 = Vechicle2.car(manufacture: "Tesla4", year: 2023)
let bus2 = Vechicle2.bus(manufacture: "bus4", color: "red")
bike2.getManufacture2
car2.getManufacture2
//Example -9
enum Vechicle3 {
    case car(manufacture: String, year: Int)
    case bike(manufacture: String, model: String)
    case bus(manufacture: String, color: String)
    var getManufacture2: String {
        switch self {
        case let .car(manufacture: manufacture, _),let .bike(manufacture: manufacture, _),let .bus(manufacture: manufacture, _):
            return manufacture
        }
    }
}
let bike3 = Vechicle2.bike(manufacture: "Honda4", model: "demo")
let car3 = Vechicle2.car(manufacture: "Tesla4", year: 2023)
let bus3 = Vechicle2.bus(manufacture: "bus4", color: "red")
bike3.getManufacture2
car3.getManufacture2
//Example -10
enum familyMember: String {
    case Father = "Dad"
    case Mother = "Mom"
    case Brother = "Bro"
    case Sister = "Sis"
}
familyMember.Brother.rawValue
familyMember.Father.rawValue
familyMember.Mother.rawValue
familyMember.Sister.rawValue

enum favEmoji: String, CaseIterable {
   case blush = "😊"
   case rocket = "🚀"
    case fire = "🔥"
}
favEmoji.allCases
favEmoji.allCases.map(\.rawValue)
if let relax = favEmoji(rawValue: "☺️") {
    "Found new emoji"
    relax
} else {
    "This emoji doesn't exist."
}
if let blush = favEmoji(rawValue: "😊") {
    "Found new emoji"
    blush
} else {
    "This emoji doesn't exist."
}
//Example -11

enum Height {
    case short, medium, long
    mutating func makeLong(){
        self = Height.short
    }
}
var myHeight = Height.medium
myHeight.makeLong()
myHeight
//Example -12
indirect enum IntOperation {
    case add(Int,Int)
    case subtract(Int,Int)
    case freeHand(IntOperation)
    func calculateResult(of operation: IntOperation? = nil ) -> Int {
        switch operation ?? self {
        case let .add(lhs,rhs):
            return lhs + rhs
        case let .subtract(lhs, rhs):
            return lhs - rhs
        case let .freeHand(operation):
            return calculateResult(of: operation)
        }
    }
}
let freeHand = IntOperation.freeHand(.add(2,4))
freeHand.calculateResult()
let freeHand2 = IntOperation.freeHand(.subtract(4, 1))
freeHand2.calculateResult()

