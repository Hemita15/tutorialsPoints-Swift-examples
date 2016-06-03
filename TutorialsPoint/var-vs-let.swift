//
//  var-vs-let.swift
//  TutorialsPoint
//
//  Created by Hemita Pathak on 26/05/16.
//  Copyright © 2016 InformationWorks. All rights reserved.
//

import Foundation

func varVsLet() -> () {
    
    let letExample = 67
    var varExample = 65
    
    // Below line will show an error as the value of a constant cannot be changed.
    // letExample = 85
    varExample = 95
    
    print(letExample)
    print(varExample)
}