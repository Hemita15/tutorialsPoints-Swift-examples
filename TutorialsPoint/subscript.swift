//
//  subscript.swift
//  TutorialsPoint
//
//  Created by Hemita Pathak on 27/05/16.
//  Copyright © 2016 InformationWorks. All rights reserved.
//

import Foundation

import Cocoa

func sub() -> () {
    
   /* struct subexample {
        let decrementer: Int
        subscript(index: Int) -> Int {
            return decrementer / index
        }
    }
    let division = subexample(decrementer: 27)
    
    print("The number is divisible by \(division[9]) times")
    print("The number is divisible by \(division[2]) times")
    print("The number is divisible by \(division[4]) times")
    print("The number is divisible by \(division[5]) times")
    print("The number is divisible by \(division[1]) times") */
    
   /* class days{
        
        var days_week = ["Sunday", "monday", "tuseday","wednesday", "thursday", "friday", "saturday"]
        subscript (Indexable: Int) -> String{
            
            get {
                
                return days_week[Indexable]
            }
        
            set (new_value) {
                self.days_week[Indexable] = new_value
            }
        
        }
    }
    
    let D = days()
    print(D[0])
    print(D[1])
    print(D[2])
    print(D[3])
    print(D[4]) */
    
   // var someStr : [String] = ["monday","tuseday", "wednesday","thursday", "friday", "saturday", "sunday"]
    
    
   // var oldval = someStr.append("sunday")
    //someStr[0] += "sunday"
 //   var oldval = someStr[0]
   // someStr[0] += "sunday"
    
 //   print("1st day of week is \(oldval)")
   // print("1st day of week is \(someStr[0])")
   // print(("2nd day of the week is \(someStr[1])"))
   // print(("3rd day of the week is \(someStr[2])"))
    
    
    // options in subscript
    
    struct Matrix {
        let rows: Int, columns: Int
        var print: [Double]
        init(rows: Int, columns: Int) {
            self.rows = rows
            self.columns = columns
            print = Array(count: rows * columns, repeatedValue: 0.0)
        }
        subscript(row: Int, column: Int) -> Double {
            get {
                return print[(row * columns) + column]
            }
            
            set {
                print[(row * columns) + column] = newValue
            }
        }
    }
    var mat = Matrix(rows: 3, columns: 3)
    
    mat[0,0] = 1.0
    mat[0,1] = 2.0
    mat[1,0] = 3.0
    mat[1,1] = 5.0
    
    print("\(mat[0,0])")
    print("\(mat[0,1])")
    print("\(mat[1,0])")
    print("\(mat[1,1])")
    
}