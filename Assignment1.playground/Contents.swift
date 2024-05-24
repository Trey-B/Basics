//
////MARK: ASSIGNMENT 1
///*
//
// Create new playground taking any Example of your choice, so as to display the use of
// Below in Swift
// 1.Constants
// 2.Variables
// 3.Type Inference
// 4.Type Safety
// 5.OOP principle
// 6. Explain OOP different pillars with example
// */
//
////MARK: 1. Constants
//// example: let someConstant = 4
//// - definition: some immutable value that will be used in your code
//
////MARK: 2. Variable
//// example:  var someVariable = "my variable"
//// - definition: some mutable value to be used in your code
//
////MARK: 3. Type Inference
//// example: var data = "some random string" - because of type inference in swift this is a String type variable
////it will only be able to hold string values if the value is changed later in your code
//
////MARK: 4. Type Safety
////refer to example 3. ~ var data = "some random string"
////Due to the fact that swift is a type safe language, the data variable will only be able to hold string values
//
////MARK: 5. OOP Pillars
///*
// Abstracting
// Encapsulation
// Polymorphism
// Inheritance
//
// */
//
////MARK: 6. Explain OOP different pillars with example
//
//// Abstraction -
////    ex. a car has a gas pedal and a break pedal - Me as the end user I dont need to know how they work i just know that if i tap them then the
////        car will stop or go respectively
//// 
////    definition: Hiding unnecessary data and information from users
// 
//    class Car {
//        var gas: String
//        var color: String
//        var make: String
//        var model: String
//        
//        init(gas: String, color: String, make: String, model: String) {
//            self.gas = gas
//            self.color = color
//            self.make = make
//            self.model = model
//        }
// 
//        public func move(){
//            print("moving...vroom")
//        }
//    }
//
//// Encapsulation -
////    ex. if you have a class that has properties and methods labelling those properties and methods as private or public would be encapsulation
////    
////    definition: Bundling the data
// 
// class Car2 {
//     private var gas: String
//     private var color: String
//     private var make: String
//     private var model: String
//     
//     init(gas: String, color: String, make: String, model: String) {
//         self.gas = gas
//         self.color = color
//         self.make = make
//         self.model = model
//     }
//
//     public func move(){
//         print("moving...vroom")
//     }
// }
//               /*
// Polymorphism -
//    ex. You have a parent class, Animal, and 2 child classes, bird and fish.  The parent class has a method, move, both the fish and the bird have the same method
//        signature for the method move.  However they have different implementations to that method because both the fish and bird "move" in different ways
// 
//    definition: An object of a child class having the ability to implement methods of the parent class in different ways
// */
//    class Animal {
//        func eat(){
//            print("The animal eats food")
//        }
//    }
//    
//    class Dog: Animal {
//       override func eat(){
//            print("The dog eats dog food")
//        }
//    }
//    
//    class Cat: Animal {
//        override func eat(){
//            print("The cat eats cat food")
//        }
//    }
// 
//// Inheritance -
////    ex. you have a parent class, Creature, that has properties legs and eyes, and a function eat.  Lets say a child class of Creature, called Spider will also
////        have access to the properties and method of the Creature class
//// 
//    class Creature {
//        
//        var eyes = 1
//        var legs = 3
// 
//        func eat(){
//            print("The creature eats grass")
//        }
//    }
//    
//    class Spider: Creature {
//        
//        init(eyes: Int = 8, legs: Int = 4){
//            super.init()
//            
//            self.eyes = eyes
//            self.legs = legs
//        }
//        
//        override func eat(){
//            print("The spider eats insects that are caught in the web")
//        }
//        
//        func body(){
//            print("The spide has")
//        }
//    }
// 
////    definition: You have a child class that has access to properties/methods from a parent class
//// 
//

var myStr: String?

func randomFun(myStr: String?) {
    guard let myStr else {
        print("string is empty")
        return
    }
    print("Yooooo")
}

randomFun(myStr: myStr)
