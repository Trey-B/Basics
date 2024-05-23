import UIKit

//MARK: ASSIGNMENT 2
/*
 
 1.Arrays
 2.Sets
 3.Dictionary
 4.Tuples and its different types and use
 5.Control Statements (if , if else, if else if else,switch, guard )
 6.Loops (for loop , while loop, repeat while)
 7.Functions and different  types of functions
 
 */

//MARK: 1. Arrays
var myArr = [Int]()

//add numbers to the array
myArr.append(1)
myArr.append(2)
myArr.append(3)
myArr.append(45)
myArr.append(21)
myArr.append(7)
myArr.append(9)

//iterate through the array
for num in myArr {
    print(num)
}

//remove last
myArr.popLast()
print(myArr)
//remove all
myArr.removeAll()

//MARK: 2. Set

var mySet = Set<Int>()

//add numbers to the set
mySet.insert(2)
mySet.insert(5)
mySet.insert(5)
mySet.insert(5)
mySet.insert(6)
mySet.insert(8)
mySet.insert(0)
mySet.insert(1)
mySet.insert(23)
mySet.insert(11)
mySet.insert(20)

//print set
print(mySet)

//prints true
mySet.contains(20)

//iterate through the set
for value in mySet {
    print(value)
}
    
//MARK: 3. Dictionary
var myDictionary = [String: Int]()

myDictionary["k1"] = Int.random(in: 0...10)
myDictionary["k2"] = Int.random(in: 0...10)
myDictionary["k3"] = Int.random(in: 0...10)
myDictionary["k4"] = Int.random(in: 0...10)
myDictionary["k5"] = Int.random(in: 0...10)
myDictionary["k6"] = Int.random(in: 0...10)
myDictionary["k7"] = Int.random(in: 0...10)
myDictionary["k8"] = Int.random(in: 0...10)
myDictionary["k9"] = Int.random(in: 0...10)
myDictionary["k10"] = Int.random(in: 0...10)

//print dictionary value - and unwrap
if let keyOne = myDictionary["k1"] {
    print("key One: \(keyOne)")
}

if let keyTwo = myDictionary["k2"] {
    print("key Two: \(keyTwo)")
}


//MARK: 4. TUPLES
var myTuple: (String, Int, Int) = (name: "Trey", age: 15, birthday: 8)
//var myTuple = (name: "Trey", age: 15, birthday: 8)

//print the values in tuple
print(myTuple.0)
print(myTuple.1)
print(myTuple.2)

//MARK: 5. Control Flow

///If statement:
var num = 3
if num > 2{
    print("Yo")
} else if num < 2 {
    print("no")
}else {
    print("oh")
}

///switch
var myStr = "Hey"

switch myStr {
case "hi":
    print("case 1 true")
case "yo":
    print("case 2 true")
case "Hey":
    print("case 3 true")
default:
    print("all cases false")
}

///guard
func myFunc(){
    var myVar: String? = "My string"
    
    guard let newVar = myVar else {
        print("myVar was empty -- Fatal error")
        return
    }
    
    print("myVar had a String value")
}

myFunc()

//MARK: 6. Loops

///For loop
for _ in 0..<20 {
    print("hi")
}

///While Loop
var count = 1

while count < 15 {
    print("Count is less than 15")
    
    count += 1
}
var newCount = 15
repeat {
    print("How many times will this print")
    newCount *= 10
    print("newCount: \(newCount)")
}while newCount < 200


//MARK: 7. Functions
func returnsNothing() -> Void {
    print("I return nothing")
}
returnsNothing()

func takesIntConvertToFloat(_ number: Int) -> Float {
    return Float(number)
}
takesIntConvertToFloat(6)

func squareOfNum(_ square: Int) -> Int {
    return square * square
}

var mySquareNum = squareOfNum(5)
print("mySquareOfNum value: \(mySquareNum)")
