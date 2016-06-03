//
//  closure.swift
//  TutorialsPoint
//
//  Created by Hemita Pathak on 26/05/16.
//  Copyright © 2016 InformationWorks. All rights reserved.
//

import Foundation

import Cocoa

func close() -> () {
    
   /* let divide =  { (val1 : Int, val2 : Int) -> Int in
        
        return val1 / val2

    }
    
    let student_result = divide( 100, 10)
    print("result of student is \(student_result)")
    //return student_result */
    
    // ascending order program
    
  /*  func ascend(s1: String , s2 : String) -> Bool {
        
        
        return s1<s2
    }
    
    let stringcmp = ascend("banana", s2: "grapes")
    print(stringcmp) */
    
    // single expression implicit return
    
   /* let count = [8,34, -20, 5, 69, 18]
    var ascending = (sorted(count, {n1, n2 , in n1> n2)
    var desending = (sorted ( count, {n1, n2, in n1<n2) */
    
    
  /*  let count = [5, 10, -6, 75, 20]
    let descending = count.sort({n1, n2 in n1 > n2});
    let ascending = count.sort({n1, n2 in n1 < n2});
    
    print(descending)
    print(ascending) */
    
    
    //closure as operator function
    
  /* let num = [2,40,27,-5,86]
    _ = num.sort({(n1 : Int , n2 : Int) -> Bool in {
        return n1 < n2
        }
        let ascend = num.sort(<)
        print(ascend)
        } */

  /* let numb = [98, -20, -30, 42, 18, 35]
    _ = numb.sort({
        (left: Int, right: Int) -> Bool in
        return left < right
    })
    let asc = numb.sort(<)
    print(asc) */


   
    
    /*func salary(gross_salary : Int) -> (Int) {
        
        var total_salary = 15000
        
        func intensive () -> Int {
            
            total_salary += gross_salary
            print(total_salary)
            return total_salary
            
        }
        return intensive()
    }
    
    
    let monthly = salary(20000)
    monthly
    monthly
    monthly */
    
    
    
    
}


    