//
//  fallthrough.swift
//  TutorialsPoint
//
//  Created by Hemita Pathak on 25/05/16.
//  Copyright © 2016 InformationWorks. All rights reserved.
//

import Foundation

import Cocoa

func fallthroghstat() -> () {
    
    let varA : Int = 100
    
    
    switch varA
    {
    case 50 :
        print("value of varA is 50")
        
    case 100:
        print("value of varA is either 100")
        fallthrough
        
    case 20:
        print("value of varA is 20")
        
    default:
        print("default value of varA is \(varA)")
        
    }
    
    
    
}

