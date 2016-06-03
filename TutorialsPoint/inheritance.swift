//
//  inheritance.swift
//  TutorialsPoint
//
//  Created by Hemita Pathak on 27/05/16.
//  Copyright © 2016 InformationWorks. All rights reserved.
//

import Foundation

import Cocoa

func inherit() -> () {
    
    
    //base class example
    
  /*  class student {
        
        var stu_name : String
        var mark1 : Int
        var mark2 : Int
        var mark3 : Int
        
        init(stu_name : String, mark1 : Int, mark2 : Int, mark3 : Int) {
            
            self.stu_name = stu_name
            self.mark1 = mark1
            self.mark2 = mark2
            self.mark3 = mark3
    }
 
    
 }
        
        let stu_name = "xyz"
        let mark1 = 20
        let mark2 = 35
        let mark3 = 25
    
    
    print(stu_name)
    print(mark1)
    print(mark2)
    print(mark3)   */
    
    
    // sub class example
    
     /*class student {
        
        var mark1 : Int
        var mark2 : Int
        
        init( stm1 : Int , result stm2 : Int) {
            mark1 = stm1
            mark2 = stm2
        }
        
        func print ( ) {
            
            print(" mark1 : \(mark1), mark2 : \(mark2)")
            
        }

}
    class display : student() {
        
        init(){
        super.init( stm1 = 78, result = 84)
        }
    }
    
    let markobtain = display
    markobtain.print()) */
    
    
  /*  class StudDetails {
        var mark1: Int;
        var mark2: Int;
        
        init(stm1:Int, results stm2:Int) {
            mark1 = stm1;
            mark2 = stm2;
        }
        
        func print() {
            //print("mark1 : \(mark1) , mark2 is : \(mark2)")
            Swift.print("a")
            var mark1: Int;
            mark1 = 25;
            Swift.print(mark1)
        }
        
        func printTwo () {
            Swift.print(mark1)
        }
    }
    
    class display : StudDetails {
        init() {
            super.init(stm1: 93, results: 89)
        }
    }
    
    let marksobtained = display()
    marksobtained.print()
    marksobtained.printTwo() */



// note : see in book for the whole understanding.

    
    // method overriding
    
  /*  class cricket {
        
        func print () {
            
            Swift.print("welcome to cricket")
        }
    }
    
    class tennis : cricket {
        
        func print1 () {
        
           Swift.print("welcome to tennis")
    
        }
    }

    let cricinstance = cricket()
    cricinstance.print()
    
    let tennisinstance = tennis()
    tennisinstance.print1()   */
    
    
    //proprty overriding
    
    
  /*  class Circle  {
        
        var radius = 23
        var area : String {
            
            return "of rectangle  \(radius)"
        }
        
        
    }
    
    
    class Rectangle: Circle {
        var radius1 = 11
        override var area: String {
            return super.area + " is now overridden as \(radius1)"
        }
    }

    let rect = Rectangle()
    rect.radius = 16
    rect.radius1 = 7
    print("radius \(rect.area)") */
    
    
    
    // property overriden observers
    
  /* class circle {
        
        var radius = 12.5
        var area : String{
            
            return " of rectangle \(radius)"
            
        }
    }
    
    class rectangle : circle {
        
        var radius1 = 5
        override var area : String {
        return super.area + " is now overriden as \(radius1)"
        }
    }
    
    let rect = rectangle()
    rect.radius = 20
    rect.radius1 = 15
    print(" radius \(rect.area)")

    
    
    class square : rectangle {
        
        override var radius : Double{
            
            didSet {
                
                radius1 = Int(radius/5.0)+1
            }
        }
        
        
    }
    
    let sq = square()
    sq.radius = 10
    print("radius \(sq.area)") */
    
    //prevent overriding in future. // when we usw final it eill nit let us make further sub class of the super class and also prevent overriding.
    
   /*final*/ class circle {
        
    /*final */ var radius = 12.5
        var area : String{
            
            return " of rectangle \(radius)"
            
        }
    }
    
    class rectangle : circle {
        
        var radius1 = 5
        override var area : String {
            return super.area + " is now overriden as \(radius1)"
        }
    }
    
    let rect = rectangle()
    rect.radius = 20
    rect.radius1 = 15
    print(" radius \(rect.area)")
    
    
    
    class square : rectangle {
        
        override var radius : Double{
            
            didSet {
                
                radius1 = Int(radius/5.0)+1
            }
        }
        
        
    }
    
    let sq = square()
    sq.radius = 10
    print("radius \(sq.area)")
    
    
    
}





