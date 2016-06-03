//
//  method.swift
//  TutorialsPoint
//
//  Created by Hemita Pathak on 27/05/16.
//  Copyright © 2016 InformationWorks. All rights reserved.
//

import Foundation

import Cocoa

func methods() -> (){
    
  /*  class calculations{
        
        var a : Int
        var b : Int
        var result : Int
        
    
    
        init(a: Int , b: Int) {
        
        self.a = a
        self.b = b
        result = a + b
        
    } 
    
    
    
   func third(c : Int) -> Int {
        
        return result - c
    }
    
    func result_new () {
        
        print("result is \(third(30))")
        print("result is \(third(10))")
        
        
            }
    }
    
    let pri = calculations(a : 200 , b:400)
    pri.result_new()   */
    
    // mos\difying value types by istance method
    
    struct area {
        var length = 1
        var breadth = 1
        
        func area() -> Int {
            return length * breadth
        }
        
        mutating func scaleBy(res: Int) {
            length *= res
            breadth *= res
            
            print(length)
            print(breadth)
        }
    }
    
    var val = area(length: 3, breadth: 5)
    val.scaleBy(3)
    val.scaleBy(30)
    val.scaleBy(300)
    
    
    
}