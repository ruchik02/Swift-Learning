import Foundation

//Example -1
func noArgumentAndNoReturn(){
    "I don't know"
}
noArgumentAndNoReturn()
//Example -2
func plusTwo(value: Int){
    let newValue = value + 10
}
plusTwo(value: 30)
//Example -3
func newPlusTwo(value: Int) -> Int {
    value + 2
}
newPlusTwo(value: 20)
//Example -4
func customAdd(value1: Int, value2: Int) -> Int {
    value1 + value2
}
customAdd(value1: 20, value2: 30)
//Example -5
func customMinus (_ lhs: Int, _ rhs: Int) -> Int {
    lhs - rhs
}
customMinus(10, 5)
//Example -5
@discardableResult
func myCustomAdd(_ lhs: Int, _ rhs: Int) -> Int{
    lhs + rhs
}
myCustomAdd(10, 20)
//Example -6
func doSomethingComplicated(with value: Int) -> Int {
    func mainLogic(value: Int) -> Int {
       value + 10
    }
    return mainLogic(value: value + 3)
}
doSomethingComplicated(with: 30)
//Example -7
func getFullName(firstName: String = "Ruchika", lastName: String = "Sharma") -> String {
    "\(firstName) \(lastName)"
}
//without arguments
getFullName()
//only pass firstName
getFullName(firstName: "Yukti")
//only pass lastName
getFullName(lastName: "Gulati")
// both pass
getFullName(firstName: "Chahat", lastName: "Chand")
