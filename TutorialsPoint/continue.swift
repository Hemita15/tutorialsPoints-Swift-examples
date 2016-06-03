//
//  continue.swift
//  TutorialsPoint
//
//  Created by Hemita Pathak on 25/05/16.
//  Copyright © 2016 InformationWorks. All rights reserved.
//

import Foundation

import Cocoa

func conti() -> () {

    
    
   var index = 10
    
    repeat{
        index = index + 1
        
        if( index == 15 ){
            continue
        }
        print( "Value of index is \(index)")
    }while index < 22
    
    
}
