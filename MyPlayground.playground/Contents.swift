                                                                                         //: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
str = "Hello, Swift"
let constStr = str
                                                                                         var nextYear: Int //int type
                                                                                         var bodyTemp: Float //float type
                                                                                         var hasPet: Bool //boolean type
                                                                                         var arrayOfInts: [Int] //array
                                                                                         var dictionaryOfCapitalsByCountry: [String:String] //dictionary
                                                                                         var winningLotteryNumbers: Set<Int> //set
                                                                                         let number = 42
                                                                                         let fmStation = 91.1
                                                                                         var countingUp = ["one", "two"] //array
                                                                                            countingUp.count //property of an array
                                                                                            countingUp.append("three") //instance method
                                                                                         let nameByParkingSpace = [13: "Alice", 27: "Bob"] //dictionary
                                                                                            let space13Assignee: String? = nameByParkingSpace[13]
                                                                                            let space42Assignee: String? = nameByParkingSpace[42]
                                                                                         
                                                                                         let secondElement = countingUp[1] //substring of an array
                                                                                         let emptyString = String() //initialize a string
                                                                                            emptyString.isEmpty
                                                                                         let emptyArrayOfInts = [Int]() //initialze an array of ints
                                                                                         let emptySetOfFloats = Set<Float>() //initialize a set of floats
                                                                                         let defaultNumber = Int()
                                                                                         let defaultBool = Bool()
                                                                                         let meaningOfLife = String(number) //creates a string of 42
                                                                                         let availableRooms = Set([205, 411, 412]) //creates a set with an array literal
                                                                                         let defaultFloat = Float()
                                                                                         let floatFromLiteral = Float(3.14)
                                                                                         let easyPi = 3.14 //creates a double automatically
                                                                                         let floatFromDouble = Float(easyPi)
                                                                                         let floatingPi: Float = 3.14 //specifying type in declaration
                                                                                         
                                                                                         
                                                                                         //optionals
                                                                                         var reading1: Float?
                                                                                         var reading2: Float?
                                                                                         var reading3: Float?
                                                                                         reading1 = 9.8
                                                                                         reading2 = 9.2
                                                                                         reading3 = 9.7
                                                                                         if let r1 = reading1, let r2 = reading2, let r3 = reading3
                                                                                         {
                                                                                            let avgReading = (r1+r2+r3)/3
                                                                                         }
                                                                                         else
                                                                                         {
                                                                                            let errorString = "Instrument reported a reading that was nil"
                                                                                         }
                                                                                         
                                                                                         //loops
                                                                                         let range = 0..<countingUp.count
                                                                                         for i in range
                                                                                         {
                                                                                            let string = countingUp[i]
                                                                                            //Use 'string'
                                                                                         }
                                                                                         
                                                                                         for string in countingUp
                                                                                         {
                                                                                            
                                                                                         }
                                                                                         for (i, string) in countingUp.enumerated()
                                                                                         {
                                                                                            
                                                                                         }
                                                                                         for (space, name) in nameByParkingSpace
                                                                                         {
                                                                                            let permit = "Space \(space):\(name)"
                                                                                         }
                                                                                         
                                                                                         //enumerations
                                                                                         enum PieType
                                                                                         {
                                                                                            case apple
                                                                                            case cherry
                                                                                            case pecan
                                                                                         }
                                                                                         
                                                                                         let favoritePie = PieType.apple
                                                                                         let name: String
                                                                                         switch favoritePie
                                                                                         {
                                                                                         case .apple:
                                                                                            name = "Apple"
                                                                                         case .cherry:
                                                                                            name = "Cherry"
                                                                                         case .pecan:
                                                                                            name = "Pecan"
                                                                                            
                                                                                    
                                                                                         }
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                        
                                                                                         
                                                                                         
                                                                                        
                                                            
                                                                                         
                                                                                         
                                                                                
                                                                                         
                                                                                        
                                                                                        
                                                                            
                                                                                         
                                                                                         
                                                                                         
                                                                                         
