//
//  ARC.swift
//  TutorialsPoint
//
//  Created by Hemita Pathak on 31/05/16.
//  Copyright © 2016 InformationWorks. All rights reserved.
//

import Foundation

import Cocoa

func ARC() -> () {
    
    //autiomatic reference counting
    
 /*   class student {
        
        var stu_name : String
        var mark : Int
    
        init(stu_name : String , mark : Int )
             {
            self.stu_name = stu_name
            self.mark = mark
        }
    
        deinit {
            
            print("Deinitialized value of student name \(self.stu_name)")
            print("Deinitialized value of mark \(self.mark)")
            
        }
    }
    
    let stu_name = "xyz"
    let mark = 25
    
    print(stu_name)
    print(mark)  */
    
    
    //  ARC strong reference cycles class instance
    
 /*   class studentmarks {
        
        var stu_name : String
        var mark : student?
        
        init(stu_name : String) {
            
            self.stu_name = stu_name
            print("intilizing \(stu_name)")
        }
       
        deinit {
            
            print("deintilizing \(stu_name)")
        }
    
    }
    
    class student {
        
        var str_name : String
        var mark1 : studentmarks?
        
        init(str_name : String) {
            
            self.str_name = str_name
            print("intilizing \(str_name)")
        }
        
        deinit {
            
            print("deintilizing \(str_name)")
        }
        
        
    }
    
    var xyz : studentmarks?
    var pqr : student?
    
    xyz = studentmarks(stu_name: "xyz")
    pqr = student(str_name: "pqr")
    
   // xyz?.mark = pqr
   // pqr?.str_name = xyz */
    
    
    
  
    // weak reference program
    
  /* class module {
        
        var name : String
        var sub : submodule?
        
        init(name : String) {
            
            self.name = name
        }
        
        deinit {
            
            print("\(name) is the main module")
        }
    }
    
    class submodule {
        
        var number : Int
       weak var topic : module?
        
        init(number : Int) {
            
            self.number = number
        }
    
        deinit {
            
            print("topic in the submodule is \(number)")
        }
    
    }
    
    var tot : module?
    var tit : submodule?
    
    tot = module(name: "new_chapter")
    tit = submodule(number: 1)
    
    tot = nil
    tit = nil */
    
    
    
    
    // unowned reference program
    
    class studentmarks {
        
        var stu_name : String
        var mark : student?
        
        init(stu_name : String) {
            
            self.stu_name = stu_name
            
        }
        
        deinit {
            
            print("name \(stu_name)")
        }
        
    }
    
    class student {
        
        var str_name : String
       unowned var mark1 : studentmarks
        
        init(str_name : String , mark1 : studentmarks) {
            
            self.str_name = str_name
            self.mark1 = mark1
        
        }
        
        deinit {
            
            print("deintilizing name of student \(str_name)")
        }
        
        
    }
    
        var module : studentmarks?
        module = studentmarks.init(stu_name: "xyz")
        module! .mark = student(str_name: "pqr", mark1: module!)
        module = nil 
    
    
    
    
    
    
}
