//
//  array.swift
//  TutorialsPoint
//
//  Created by Hemita Pathak on 25/05/16.
//  Copyright © 2016 InformationWorks. All rights reserved.
//

import Foundation

import Cocoa

func array() -> () {
    
   /* var someInts : [Int] = [10,20,30] //initial array
    
    print("1st element of the array is \(someInts[0])")
    print("2nd element of the array is \(someInts[1])")
    print("3rd elememt of the array is \(someInts[2])") */
    
    
    // modifying array
    
  /*  var someInts = [Int] ()
    
    someInts.append(20)
    someInts.append(40)
    someInts += [10]
  
    let someVar = someInts[0]
    
    print("1st element of the array is \(someVar)")
    print("2nd element of the array is \(someInts[1])")
    print("3rd elememt of the array is \(someInts[2])") */

    
    
// modifying existing value of the array at given location
    
 /* var someInts = [Int] ()
    
    someInts. append(10)
    someInts.append((30)
    someInts += 20
    
    // modifying value
    
    someInts[2] = 5
    let someVar = someInts[2]
    
    print("1st element of the array is \(someInts[0]")
    print("2nd element of the array is \(someInts[1])")
    print("3rd elememt of the array is \(somevar)") */
    
    
 
    // array with string
 /*   var someStrs = [String]()
    
    someStrs.append("Apple")
    someStrs.append("Amazon")
    someStrs += ["Google"]
    
    for item in someStrs {
        print(item)
    } */
    
    
    // merge two array
    
    
    
    let intsA : [Int] = [3,6]
    let intsB : [Int] = [2,7,9]
    
    let intsC = intsA + intsB
    
    for item in intsC {
        print(item)
    }
    
}




