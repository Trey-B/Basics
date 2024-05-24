import UIKit

/*
 //Assignment-3
 Create a new playground taking any Example of your choice, to display the use of
 Below in Swift
 1. Optional variables have different types
 2. Optional binding (If let, guard let,  nil coalescing)
 3. Optional Chaining
 5. Classes and inheritance and initializers for it
 6. Structs and initialisers for it
 7. Mutating Function in struct
 */

//MARK: Assignment 3

//MARK: 1. Optionals
var myOptionalStr: String?
var optInt: Int?

class Person {
    var age: String
    var name: String
    var car: Car?
    
    init(age: String, name: String, car: Car?) {
        self.age = age
        self.name = name
        self.car = car
    }
    
    deinit{
        print("All people objects have been clear from memory")
    }
}

class Car {
    var year: String
    var make: String
    var model: String
    
    init(year: String, make: String, model: String){
        self.year = year
        self.make = make
        self.model = model
    }
}

//MARK: 2. Optional Bindings
var anotherCar: Car? = Car(year: "2024", make: "Audi", model: "RSQ8")
var someOptional: String? = nil

///Unwrap with guard
func randomFunc(_ anotherCar: Car?) {
    guard let anotherCar else {
        print("anotherCar has not be created")
        return
    }
    print("outside the guard func")
}

///Unwrap with if-let
func randomFuncTwo(_ anotherCar: Car?) {
    if let anotherCar {
        print("anotherCar has been instantiated")
    }
}

randomFunc(anotherCar)
randomFuncTwo(anotherCar)

///nil coalescing
print("nil coalescing example: \(someOptional ?? "Default value")")

//MARK: 3. Optional Chaining
var emtptyCar: Car? = nil

//both of these results to being nil
var carMake = emtptyCar?.make
var carModel = emtptyCar?.model


//MARK: 4. Classes and inheritance and initializers for it
class PoliceOfficer: Person {
    var badgeNum: String
    
    init(badgeNum: String) {
        self.badgeNum = badgeNum
        super.init(age: "42", name: "Jane Doe", car: nil)
    }
    
    deinit {
        print("All Police Officer objects have been cleared from memory")
    }
}

var officerOne: PoliceOfficer? = PoliceOfficer(badgeNum: "345")
var policeCar: Car? = Car(year: "2023", make: "Dodge", model: "Charger")
officerOne?.car = policeCar
var policeCarModel = officerOne?.car?.model

//MARK:  5 - 6. Structs and initialisers for it | Mutating Function in struct
///You can add an initializer in a struct, however its not necessary since a memberwise init() is provided default

struct Stack {
    var listOfItems: [Int?]
    
    ///Not needed but provide if wanted
    init(listOfItems: [Int?]) {
        self.listOfItems = listOfItems
    }
    
    mutating func push(newItem: Int?){
        listOfItems.append(newItem)
    }
    
    mutating func pop(lastItem: Int?) -> Int?{
        guard !listOfItems.isEmpty else {
            print("Your stack is empty")
            return nil
        }
        return listOfItems.removeLast()
    }
}


anotherCar = nil
officerOne?.car = nil
policeCar = nil
officerOne = nil


