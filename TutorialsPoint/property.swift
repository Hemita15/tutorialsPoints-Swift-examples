//
//  property.swift
//  TutorialsPoint
//
//  Created by Hemita Pathak on 26/05/16.
//  Copyright © 2016 InformationWorks. All rights reserved.
//

import Foundation

import Cocoa


func prop () -> () {
    
   //stored property
    
 /*   struct number{
        
        var digit : Int
        let pi = 3.14
    }
    
    var num = number.init(digit: 12345)
    num.digit = 89
    
    print("value of number is \(num.digit)")
    print("value of pi is \(num.pi)") */
    
   
    //modifying values of the proprties
  /*  struct veggies{
        
        var brinjal : Int
        var brocoli = 50
        
        
    }
    
    
     var rate = veggies.init(brinjal: 25, brocoli: 40)
     rate.brinjal = 30
     rate.brocoli = 65
    
    print("rate of brinjal is \(rate.brinjal)")
    print("rate of brocoli is \(rate.brocoli)") */
    
    
    //lazy stored properties
    
   /* class salary {
        
        var total_salary = 10000
    }
    
    class incentive{
        
        lazy var total_incentive = salary()
        var wedges = [Int]()
    }
    
    let total_pay = incentive()
   // total_pay.wedges.append(5000)
   // total_pay.wedges.append(7000)
    print(total_pay.total_incentive.total_salary) */
    
    /*class DataImporter { // program snnipet from apple
        /*
        DataImporter is a class to import data from an external file.
        The class is assumed to take a non-trivial amount of time to initialize.
        */
        var fileName = "data.txt"
        // the DataImporter class would provide data importing functionality here
    }
    
    class DataManager {
        lazy var importer = DataImporter()
        var data = [String]()
        // the DataManager class would provide data management functionality here
    }
    
    let manager = DataManager()
    manager.data.append("Some data")
    manager.data.append("Some more data")
    print(manager.importer.fileName) */
    
    
    //computed properties
    
 /*   struct point {
        
        var x = 15.0
        var y = 15.0
        
        var width = 10.0
        var height = 10.0
        
        var center : (Double , Double) {
            get{
                return(width/2 , height/2)
            }
        set(center)
        {
            x = center.0 - (width/2)
            y = center.1 - (height/2)
            
            }
        
        }
        
    }
    
    var result = point()
    print("center of square is \(result.center)")
    
    print(result.x)
    print(result.y)
    print(result.width)
    print(result.height) */
    
    
    
    //querying and setting properties
    struct StudMarks {
        static let markCount = 97
        static var totalCount = 0
        var InternalMarks: Int = 0 {
            didSet {
                if InternalMarks > StudMarks.markCount {
                    InternalMarks = StudMarks.markCount
                }
                if InternalMarks > StudMarks.totalCount {
                    StudMarks.totalCount = InternalMarks
                }
            }
        }
    }
    
    var stud1Mark1 = StudMarks()
    var stud1Mark2 = StudMarks()
    
    stud1Mark1.InternalMarks = 98
    print(stud1Mark1.InternalMarks) 
    
    stud1Mark2.InternalMarks = 87
    print(stud1Mark2.InternalMarks)

    

}


    

