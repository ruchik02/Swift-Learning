import Foundation
//Example - 1
let add:(Int, Int) -> Int = {
    (lhs: Int, rhs: Int) -> Int in
    lhs + rhs
}
add(10,20)
//Example - 2
func customAdd(_ lhs: Int, _ rhs: Int, using fun: (Int, Int) -> Int) -> Int {
    fun(lhs,rhs)
}
customAdd(20,30, using: {
    (lhs: Int, rhs: Int) -> Int in
    lhs + rhs
})
// another way
customAdd(20,60)
{
    (lhs: Int, rhs: Int) -> Int in
    lhs + rhs
}
// one more way
customAdd(30,30)
{
    (lhs, rhs) in
    lhs + rhs
}
// new way
customAdd(30,50)
{
    $0 + $1
}
//Example - 2
let ages = [30,20,60,10,40,80]
ages.sorted(by: {
    (lhs: Int, rhs: Int) -> Bool in
   true
})
//another way todo so
let age = [10,6,80]
age.sorted(by: <) // ascending 6,10,80
age.sorted(by: >) // descending 80,10,6
// Example - 3
func customAdd2(using fun: (Int, Int) -> Int, _ lhs: Int, _ rhs: Int ) -> Int {
    fun(lhs,rhs)
}
//another way
customAdd2(using: {(lhs,rhs) in  lhs + rhs }, 20, 20)
// one more way
customAdd2(using: { $0 + $1 }, 20, 70)
// new way
customAdd2(using: { $0 + $1 + 5 + 6 }, 20, 70)
//Example - 4
func add10To(_ value: Int) -> Int {
    value + 10
}
func add20To(_ value: Int) -> Int {
    value + 20
}
add10To(20)
add20To(1)
func doAddition(
    on value: Int,
    using function: (Int) -> Int
) -> Int {
    function(value)
}
doAddition(on: 5) {(value) in
   value + 30
}
// another way
doAddition(on: 40, using: add10To(_:))
doAddition(on: 10, using: add20To(_:))
//Example - 5
func add100To(value: Int) -> Int {
    value + 10
}
func add200To(value: Int) -> Int {
    value + 20
}
doAddition(on: 22, using: add100To(value:))
doAddition(on: 30, using: add200To(value:))
//Example - 6
//sorting array
let numbers = [10,8,7,2,5]
let sortedNumbers = numbers.sorted(by: {$0 < $1})
print(sortedNumbers)
// filtering array with closures
let numbersArray = [1,2,3,4,5,8,10]
let arraySorted = numbersArray.filter({ $0 % 2 == 0 })
print(arraySorted);
// map transformation with closures
let mapArray = [1,2,3,4,5,6]
let sortedMapArray = mapArray.map({$0 * 4})
print(sortedMapArray)
//calculating the multiplication of function
func multiple(a: Int, b:Int) -> Int {
    a * b
}
let multi = multiple(a: 10, b: 20)
print(multi)

