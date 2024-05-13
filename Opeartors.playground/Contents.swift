import Foundation
//example-1
let myAge = 23
let yourAge = 22
if myAge > yourAge {
    "I'm elder than you"
} else if myAge < yourAge {
    "you are older than me"
} else {
    "we are same"
}
//example-2 unary prefix
let foo = !true
//example-3 unary postfix
let name = Optional("Ruchika")
type (of: name)
let unaryPostFix = name!
type(of: unaryPostFix)
let binaryInfix = 1 + 2
let fullName = "Ruchika" + " " + " Sharma"
//example-3
let myMotherAge = myAge + 40
let doubleMyAge = myAge * 2
let myFatherAge  = myMotherAge - 10
//example-4 Ternary
let age = 30
//let message: String
//if age>=18 {
//    message = "You are an adult"
//} else {
//    message = "you are not yet an adult"
//}
//message
let message = age >= 18 ? "You are an adult" : "you are not yet an adult"
