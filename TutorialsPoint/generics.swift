//
//  generics.swift
//  TutorialsPoint
//
//  Created by Hemita Pathak on 01/06/16.
//  Copyright © 2016 InformationWorks. All rights reserved.
//

import Foundation

import Cocoa


    
  /*  func exchange ( inout a : Int , inout b : Int)  {
        
        let temp = a
        a = b
        b = temp
        
    }
    
    var num1 = 100
    var num2 = 200
    
    print(" before swapping no:1 is \(num1) and no:2 \(num2)")
    exchange(&num1, b: &num2)
    print("after swapping no:1 is \(num1) and no:2 \(num2)") */
    


//type parameters

/*   func exchange<T>(inout a: T , inout b: T) {
        
        let temp = a
        a = b
        b = temp
    }
    
    var num1 = 100
    var num2 = 200
    
    print(" before swapping no:1 is \(num1) and no:2 \(num2)")
    exchange(&num1, b: &num2)
    print("after swapping no:1 is \(num1) and no:2 \(num2)")
    
    var str1 = "generics"
    var str2 = "functions"
    
    print(" before swapping no:1 is \(str1)) and no:2 \(str2)")
    exchange(&str1, b: &str2)
    print("after swapping no:1 is \(str1) and no:2 \(str2)") */

   
    
    
    //generic types
    
  /*  struct TOS<T> {
        
        var items = [T] ()
        mutating func push (item : T) {
            
            items.append(item)
        }
       
        mutating func pop () -> T  {
            
            return items.removeLast()
            
            
        }
        
        
    }


func gen () -> () {
    
    var tos = TOS<String>()
    tos.push("xyz")
    print(tos.items)
    
    tos.push("pqr")
    print(tos.items)
    
    tos.push("lmn")
    print(tos.items)
    
    let deletetos = tos.pop() */

    


// extending a generic type




/* struct TOS<T> {
    
    var items = [T] ()
    mutating func push (item : T) {
        
        items.append(item)
    }
    
    mutating func pop () -> T  {
        
        return items.removeLast()
        
        
    }
    
    
}


func gen () -> () {
    
    var tos = TOS<String>()
    tos.push("a")
    print(tos.items)
    
    tos.push("b")
    print(tos.items)
    
    tos.push("c")
    print(tos.items)
    
    tos.push("d")
    print(tos.items)
    
    
    
    if let first = tos.first {
        print("The first item on the stack is \(first).")
    }
}

extension TOS {
    var first: T? {
        return items.isEmpty ? nil : items[items.count - 1]
    }
} */






// associated type

/*protocol Container {
  typealias ItemType
  mutating func append(item: ItemType)
  var count: Int { get }
  subscript(i: Int) -> ItemType { get }
}

struct TOS<T>: Container {
    // original Stack<T> implementation
    var items = [T]()
    mutating func push(item: T) {
        items.append(item)
    }
    
    mutating func pop() -> T {
        return items.removeLast()
    }
    
    // conformance to the Container protocol
    mutating func append(item: T) {
        self.push(item)
    }
    
    var count: Int {
        return items.count
    }
    
    subscript(i: Int) -> T {
        return items[i]
    }
}


func gen () -> () {

    
var tos = TOS<String>()
tos.push("Swift")
print(tos.items)

tos.push("Generics")
print(tos.items)

tos.push("Type Parameters")
print(tos.items)

tos.push("Naming Type Parameters")
print(tos.items) */



// where clause

protocol Container {
    typealias ItemType
    mutating func append(item: ItemType)
    var count: Int { get }
    subscript(i: Int) -> ItemType { get }
}

struct StackIt<T>: Container {
    
    // original StackIt<T> implementation
    
    var items = [T]()
    mutating func push(item: T) {
        items.append(item)
    }
    
    mutating func pop() -> T {
        return items.removeLast()
    }
    
    // conformance to the Container protocol
    mutating func append(item: T) {
        self.push(item)
    }
    
    var count: Int {
        return items.count
    }
    
    subscript(i: Int) -> T {
        return items[i]
    }
}

func allItemsMatch<
    C1: Container, C2: Container
    where C1.ItemType == C2.ItemType, C1.ItemType: Equatable>
    
    (someContainer: C1, anotherContainer: C2) -> Bool {
        
        // check that both containers contain the same number of items
        if someContainer.count != anotherContainer.count {
            return false
        }
        
        // check each pair of items to see if they are equivalent
        for i in 0..<someContainer.count {
            if someContainer[i] != anotherContainer[i] {
                return false
            }
        }
        // all items match, so return true
        return true
}

func gen () -> () {
    

var tos = StackIt<String>()
tos.push("Swift")
print(tos.items)

tos.push("Generics")
print(tos.items)

tos.push("Where Clause")
print(tos.items)

var eos = ["Swift", "Generics", "Where Clause"]
print(eos)


}




