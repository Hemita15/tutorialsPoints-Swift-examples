//
//  deintilaizing.swift
//  TutorialsPoint
//
//  Created by Hemita Pathak on 31/05/16.
//  Copyright © 2016 InformationWorks. All rights reserved.
//

import Foundation

import Cocoa

func deintilizing() -> () {
    
    // how to deallocate memory space
    
    
    
   class baseclass {
     
        var count = 1;
    
    init () {
        
        count++
    }
   
        deinit {
            
            count--
        }
  }
    

    var print_new : baseclass? = baseclass ()
    print(print_new?.count)
    
    print_new = nil
    print(print_new?.count)
    
    
    



}
