//
//  intialization.swift
//  TutorialsPoint
//
//  Created by Hemita Pathak on 30/05/16.
//  Copyright © 2016 InformationWorks. All rights reserved.
//

import Foundation

import Cocoa

func intilization() -> () {
    
  /* struct rectangle {
        var length = 2
        var breadth = 4
        //init() {
           // length = 6
           // breadth = 12
       // }
    }
    let area = rectangle()
    print("area of rectangle is \(area.length*area.breadth)") */


    
// parameter intialization
    
  /*  struct Rectangle {
        var length: Double
        var breadth: Double
        var area: Double
        
        init(fromLength length: Double, fromBreadth breadth: Double) {
            self.length = length
            self.breadth = breadth
            area = length * breadth
        }
        
        init(fromLeng leng: Double, fromBread bread: Double) {
            self.length = leng
            self.breadth = bread
            area = leng * bread
        }
    }
    
    let ar = Rectangle(fromLength: 6, fromBreadth: 12)
    print("area is: \(ar.area)")
    
    let are = Rectangle(fromLeng: 36, fromBread: 12)
    print("area is: \(are.area)") */
    
    
   //local and external initialazion.
    
  /*  struct Days {
        let sunday, monday, tuesday: Int
        init(sunday: Int, monday: Int, tuesday: Int) {
            self.sunday = sunday
            self.monday = monday
            self.tuesday = tuesday
        }
        
        init(daysofaweek: Int) {
            sunday = daysofaweek
            monday = daysofaweek
            tuesday = daysofaweek
        
        }
    }
    
   let week = Days(sunday: 1, monday: 2, tuesday: 3)
    print("Days of a Week is: \(week.sunday)")
    print("Days of a Week is: \(week.monday)")
    print("Days of the Week is \(week.tuesday)")   */
    
   /* let weekdays = Days(daysofaweek: 4)
    print("Days of a Week is: \(weekdays.sunday)")
    print("Days of a Week is: \(weekdays.monday)")
    print("Days of a Week is: \(weekdays.tuesday)") */
    
    
    // modifying constant values
    
  /*  struct Rectangle {
        let length: Double?
        
        init(frombreadth breadth: Double) {
            length = breadth * 10
        }
        
        init(frombre bre: Double) {
            length = bre * 30
        }
        
        init(_ area: Double) {
            length = area
        }
    }

    let rectarea = Rectangle(180.0)
    print( " area of the rectangle is \(rectarea.length)")
    
    let rearea = Rectangle(115)
    print(" area of the rectangle is \(rearea.length)")
    
    let recarea = Rectangle(150)
    print("area of the rectangle is \(recarea.length)") */
    
    
    // memberwise initializers for sturcture type
    
    struct rectangle {
        
        var length = 100
        var breadth = 150
    }
    
    
    let area = rectangle(length: 10 , breadth : 12)
    
    print("area of rectangle is : \(area.length)")
    print("area of rectangle is : \(area.breadth)")
}



