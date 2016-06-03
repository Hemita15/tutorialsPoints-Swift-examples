//
//  dictionaries.swift
//  TutorialsPoint
//
//  Created by Hemita Pathak on 26/05/16.
//  Copyright © 2016 InformationWorks. All rights reserved.
//

import Foundation

import Cocoa

func dic() -> () {
    
   let someDict1 : [Int : String] = [ 1: "one" , 2: "two" , 3: "three"]
    let someDict2 : [Int : String] = [4: "four", 5: "five", 6: "six"]
    let someDict3 = [Int : String]()
    
  /*  print("value of key 1 is \(someDict[1])")
    print("value of key 2 is \(someDict[2])")
    print("value of key 3 is \(someDict[3])") */
    
    
    // to update value of the key
    
    /*let oldval = someDict.updateValue("four", forKey: 1)
    let someVar = someDict[1] */
    
   /* let oldval = someDict[1]
    someDict[1] = "four"
    let someVar = someDict[1] */
    
  //  var removedValue = someDict.removeValueForKey(2)
    
   // someDict[2] = nil
    
  //  for (key, value) in EnumerateSequence (someDict) { //using enumerator
        
     //   print("for key \(key), value is \(value)")
   // }
    
   // print("old value of 1 is \(oldval)")
  /*  print("value of 1 is \(someDict[1])")
    print("value of 2 is \(someDict[2])")
    print("value of 3 is \(someDict[3])") */
    
    // converting in array
    
  /*  let dictkeys = [Int] (someDict.keys)
    let dictvalues = [String] (someDict.values)
    
    //print keys
    
    print("keys for the dictionary")
    
    for (key) in dictkeys{
        
        print("\(key)")
    }
    
    //print values
    
    print("value for the dictionary")
    
    for (value) in dictvalues {
        
        print("\(value)") */
    
    // count no of items in dictionary
    
    
 /*   print(" total items in dictionary 1 is \(someDict1.count)")
    print("total items in dictionary 2 is \(someDict2.count)") */
    
    print("dictionary 1 is empty, \(someDict1.isEmpty)")
    print("dictionary 2 is empty, \(someDict2.isEmpty)")
    print("dictionary 3 is empty, \(someDict3.isEmpty)")
    
    
    
    
    
    }
    

    
    

