import Foundation
//example-1
let myName="Ruchika"
let yourName="Ios-training"
myName
//example-2
var lastName="sharma"
var subject="Swift"
lastName=subject
lastName
subject
//example-3
var names=[myName,yourName]
names=["software Engineer"]
names.append("Computer Science Engineering")
//example-4
let myLet = 10
var myVar = 20
myVar = myLet
myVar = 40
//examle-5
let foo = "foo"
var foo1 = foo
foo1 = "foo 1"
foo1 = "foo 2"
foo1 = foo
//examle-6
let moreNames = ["Apple", "Mango"]
var copy = moreNames
copy = ["Grape"]
copy.append("Orange")
//examle-7
let oldArray = NSMutableArray(
  array: ["iphone", "tablet", "watch"]
)
oldArray.add("laptop")
var newArray = oldArray
newArray.add("ipad")
oldArray
func changeTheArray(_ array:NSArray){
    let copy = array as! NSMutableArray
    copy.add("charger")
}
changeTheArray(oldArray)
oldArray
