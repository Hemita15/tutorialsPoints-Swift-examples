//
//  enumrator.swift
//  TutorialsPoint
//
//  Created by Hemita Pathak on 26/05/16.
//  Copyright © 2016 InformationWorks. All rights reserved.
//

import Foundation

import Cocoa

func enumerator() -> () {
    
    
 /*   enum fruits{
        
        case frozen
        case fresh
        
    }
    
    let info = fruits.fresh
  //  var info = fruits.fresh
    
    switch info{
    case .frozen :
        print("blue berry")
    case.fresh:
        print("orange")
    default:
        print("none has chosen")
        
    } */
    
    
    
    //enumarator with associated value
    
  /*  enum student{
        
        case student_name (String)
        case mark (Int, Int,Int)
    }
        
       var student_detail = student.student_name("xyz")
       let student_result = student.mark(40, 49, 43)
    
    
    switch student_result {
    case.student_name(let stuname) :
        print("name of the student is \(stuname)")
    case.mark(let mark1 , let mark2 , let mark3):
        print("marks of the student is \(mark1), \(mark2), \(mark3)")
    default:
        print("none of the above") */
    
    
   // enum with raw data
    
    enum month : Int {
        
        case january = 1 , february, march , april, may, june , july, august, sepetmbrer, october , november, december
    }
    

 //   let current_month = month.may.rawValue
 //   print("current month is \(current_month)")
    
    
    let current_month = month.may.hashValue
    print("current month is \(current_month)")
    
    
    
    
    
    
    
    }
    
    
    
    

