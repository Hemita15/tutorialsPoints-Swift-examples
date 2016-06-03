//
//  ifstatement.swift
//  TutorialsPoint
//
//  Created by Hemita Pathak on 25/05/16.
//  Copyright © 2016 InformationWorks. All rights reserved.
//

import Foundation

import Cocoa

func ifstatement() -> () {
    
    let varA: Int = 5

     if varA < 15
     {
        print("varA is less than 15")
    }
    
    else
     {
        print("varA is greater than 15")
    }
    
    print("value of varA is \(varA)")
}