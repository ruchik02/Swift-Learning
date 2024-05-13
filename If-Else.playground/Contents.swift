import Foundation
//Example - 1
let myName = "Ruchika"
let myAge = 23
let surName = "Sharma"
let yourAge = 20
if myName == "ruchika" {
    "Your name is \(myName)"
} else {
    "Oops, I guessed it wrong "
}
//Example - 2
let temperature = 25
if temperature > 30 {
    "It's a hot day"
} else {
    "It's not a hot day"
}
//Example - 3
if myAge == 23 {
    "You are \(myAge)"
} else if myAge >= 18 {
    "you are an adult"
} else {
    "you are not yet an adult"
}
//Example - 4
if myName == "Ruchika" && myAge == 23 {
    "yes, you are correct , my name is \(myName) and age is \(myAge)"
} else if myAge == 23 {
    "I think my guess is correct"
} else {
    "I don't know"
}
//Example - 5
if myAge == 24 || myName == "Ruchika" {
    "Either my age is \(myAge) or my name is \(myName)."
} else if myAge == 23 {
    "my age is \(myAge)"
} else {
    "no, your guess is wrong!"
}
//Example - 6
if (myAge == 22 && myName == "Ruchika") && (surName == "Sharma"  || yourAge == 20) {
    "may be you are correct"
} else {
    "may not be, I don't know"
}
