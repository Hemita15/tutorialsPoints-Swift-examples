//
//  typecasting.swift
//  TutorialsPoint
//
//  Created by Hemita Pathak on 31/05/16.
//  Copyright © 2016 InformationWorks. All rights reserved.
//

import Foundation

import Cocoa

func typecaste () -> () {
    
  
    //define class hierarchy
    
    /* class subject {
        var physics : String
        init (physics : String) {
            
            self.physics = physics
        }
        
    }
    
    class chemistry : subject {
        
        var eqations : String
        init (physics : String , eqations : String) {
            
            self.eqations = eqations
            super.init(physics: physics)
        }
        
    }


    class maths : subject {
        
        var formule : String
        init (physics : String , formule : String){
            
            self.formule = formule
            super.init(physics: physics)
        }
    }
    
     var sa = [chemistry(physics: "solid fluids", eqations: "hertz"),
                maths (physics: "fuild dynamics" , formule: " gigahertz")]

    
    let samplechem = chemistry(physics: "solid fluids" , eqations: "hertz")
    print("instance physics is : \(samplechem.physics)")
    print("instance eqations is : \(samplechem.eqations)")
    
    let samplemath = maths(physics: "fluid dynamics", formule: "giga hertz")
    print("instance of physics is : \(samplemath.physics)")
    print("instance of  maths is : \(samplemath.formule)") */
    
    
    //type checking
    
  /*  class subject {
        var physics : String
        init (physics : String) {
            
            self.physics = physics
        }
        
    }
    
    class chemistry : subject {
        
        var eqations : String
        init (physics : String , eqations : String) {
            
            self.eqations = eqations
            super.init(physics: physics)
        }
        
    }
    
    
    class maths : subject {
        
        var formule : String
        init (physics : String , formule : String){
            
            self.formule = formule
            super.init(physics: physics)
        }
    }
    
    var sa = [chemistry(physics: "solid fluids", eqations: "hertz"),
              maths (physics: "fuild dynamics" , formule: " gigahertz"),
              chemistry(physics: "thermo physics", eqations: " decibles"),
              chemistry(physics: "resistsnce", eqations: "ohm"),
              maths (physics: "diffrential equations", formule: "cousine series")]
    
    let samplechem = chemistry(physics: "solid fluids", eqations: "hertz")
    print("instance of physics is \(samplechem.physics)")
    print("instance of eqations is \(samplechem.eqations)")
    
    let samplemath = maths(physics: "fluid dynamics", formule: "giga hertz")
    print("instance of physics is \(samplemath.physics)")
    print("instance of formule is \(samplemath.formule)")
    
    var chemcount = 0
    var mathcount = 0
    
    for item in sa {
        
        if item is chemistry {
            
            ++chemcount
        }
        else if item is maths {
            
            ++mathcount
        }
    
    }
    
    print(" instances of chemistry are \(chemcount) , instances of maths are \(mathcount)") */
    
    
    // downcasting using ?
    
  /*  class subject {
        var physics : String
        init (physics : String) {
            
            self.physics = physics
        }
        
    }
    
    class chemistry : subject {
        
        var eqations : String
        init (physics : String , eqations : String) {
            
            self.eqations = eqations
            super.init(physics: physics)
        }
        
    }
    
    
    class maths : subject {
        
        var formule : String
        init (physics : String , formule : String){
            
            self.formule = formule
            super.init(physics: physics)
        }
    }
    
    var sa = [chemistry(physics: "solid fluids", eqations: "hertz"),
        maths (physics: "fuild dynamics" , formule: " gigahertz"),
        chemistry(physics: "thermo physics", eqations: " decibles"),
        chemistry(physics: "resistsnce", eqations: "ohm"),
        maths (physics: "diffrential equations", formule: "cousine series")]
    
    let samplechem = chemistry(physics: "solid fluids", eqations: "hertz")
    print("instance of physics is \(samplechem.physics)")
    print("instance of eqations is \(samplechem.eqations)")
    
    let samplemath = maths(physics: "fluid dynamics", formule: "giga hertz")
    print("instance of physics is \(samplemath.physics)")
    print("instance of formule is \(samplemath.formule)")
    
    for item in sa {
        
        if let sub = item as? chemistry {
            print("insatnces of chemistry are \(sub.physics) , \(sub.eqations)")
        }
       
        if let sub1 = item as? maths {
            
            print("instance of maths are \(sub1.physics) , \(sub1.formule)")
            
        }
    
    } */
    
    
    
    // type casting any and any object
    
  /*  class subject {
        var physics : String
        init (physics : String) {
            
            self.physics = physics
        }
        
    }
    
    class chemistry : subject {
        
        var eqations : String
        init (physics : String , eqations : String) {
            
            self.eqations = eqations
            super.init(physics: physics)
        }
        
    }
    
    
    class maths : subject {
        
        var formule : String
        init (physics : String , formule : String){
            
            self.formule = formule
            super.init(physics: physics)
        }
    }
    
    var sa = [chemistry(physics: "solid fluids", eqations: "hertz"),
        maths (physics: "fuild dynamics" , formule: " gigahertz"),
        chemistry(physics: "thermo physics", eqations: " decibles"),
        chemistry(physics: "resistsnce", eqations: "ohm"),
        maths (physics: "diffrential equations", formule: "cousine series")]
    
    let samplechem = chemistry(physics: "solid fluids", eqations: "hertz")
    print("instance of physics is \(samplechem.physics)")
    print("instance of eqations is \(samplechem.eqations)")
    
    let samplemath = maths(physics: "fluid dynamics", formule: "giga hertz")
    print("instance of physics is \(samplemath.physics)")
    print("instance of formule is \(samplemath.formule)")
    
    for item in sa {
        
        if let sub = item as? chemistry {
            print("insatnces of chemistry are \(sub.physics) , \(sub.eqations)")
        }
        
        if let sub1 = item as? maths {
            
            print("instance of maths are \(sub1.physics) , \(sub1.formule)")
            
        }
        
    }
    
    var exampleany = [Any] ()
    
    exampleany.append(5)
    exampleany.append(3.14)
    exampleany.append("biology")
    exampleany.append(chemistry(physics: "astro physics", eqations: "mega hertz"))
    
    for var sum in exampleany {
        
        switch sum {
            
        case let someInt as Int:
            print("integer value is \(someInt)")
            
        case let someStr as String:
            print("given string is \(someStr)")
            
        case let someDouble as Double where someDouble>0 :
            print("given constant value is \(someDouble)")
            
        case let phy as chemistry:
            print("topics are \(phy.physics) , \(phy.eqations)")

        default:
            print("none")
            
            
        }
        
    } */
    
    
    
    // any object
    
    class subject {
        var physics : String
        init (physics : String) {
            
            self.physics = physics
        }
        
    }
    
    class chemistry : subject {
        
        var eqations : String
        init (physics : String , eqations : String) {
            
            self.eqations = eqations
            super.init(physics: physics)
        }
        
    }
    
    
    class maths : subject {
        
        var formule : String
        init (physics : String , formule : String){
            
            self.formule = formule
            super.init(physics: physics)
        }
    }
    
    let sa : [AnyObject] = [chemistry(physics: "solid fluids", eqations: "hertz"),
        maths (physics: "fuild dynamics" , formule: " gigahertz"),
        chemistry(physics: "thermo physics", eqations: " decibles"),
        chemistry(physics: "resistsnce", eqations: "ohm"),
        maths (physics: "diffrential equations", formule: "cousine series")]
    
    let samplechem = chemistry(physics: "solid fluids", eqations: "hertz")
    print("instance of physics is \(samplechem.physics)")
    print("instance of eqations is \(samplechem.eqations)")
    
    let samplemath = maths(physics: "fluid dynamics", formule: "giga hertz")
    print("instance of physics is \(samplemath.physics)")
    print("instance of formule is \(samplemath.formule)")
    
    for item in sa {
        
        if let sub = item as? chemistry {
            print("insatnces of chemistry are \(sub.physics) , \(sub.eqations)")
        }
        
        if let sub1 = item as? maths {
            
            print("instance of maths are \(sub1.physics) , \(sub1.formule)")
            
        }
        
    }
    
    var exampleany = [Any] ()
    
    exampleany.append(5)
    exampleany.append(3.14)
    exampleany.append("biology")
    exampleany.append(chemistry(physics: "astro physics", eqations: "mega hertz"))
    
    for var sum in exampleany {
        
        switch sum {
            
        case let someInt as Int:
            print("integer value is \(someInt)")
            
        case let someStr as String:
            print("given string is \(someStr)")
            
        case let someDouble as Double where someDouble>0 :
            print("given constant value is \(someDouble)")
            
        case let phy as chemistry:
            print("topics are \(phy.physics) , \(phy.eqations)")
            
        default:
            print("none")
            
            
        }
        

    }




}
