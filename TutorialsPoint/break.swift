//
//  break.swift
//  TutorialsPoint
//
//  Created by Hemita Pathak on 25/05/16.
//  Copyright © 2016 InformationWorks. All rights reserved.
//

import Foundation

import Cocoa

func breakstat() -> () {
    
  //  var index = 5
    
  //  repeat
  //  {
    //     index = index +1
  //  }
    
  //  if (index <= 10 ){
   //     break
  //  } while index<12

   

    var index = 5
    
    repeat{
        index = index + 1
        
        if( index == 8 ){
            break
        }
        print( "Value of index is \(index)")
    }while index < 10
    
    
    
    
    
    
    
}