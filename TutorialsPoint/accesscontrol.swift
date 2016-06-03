//
//  accesscontrol.swift
//  TutorialsPoint
//
//  Created by Hemita Pathak on 02/06/16.
//  Copyright © 2016 InformationWorks. All rights reserved.
//

import Foundation

import Cocoa

// Access control for funcion type



/*private func add1(num1: Int, num2: Int) {
    let a = num1 + num2
    let b = num1 - num2
    print("value for num1 is : \(a)")
    print("value for num2 is : \(b)")
}

func AC () -> () {

add1(20, num2: 10)
add1(40, num2: 10)
add1(24, num2: 6)

} */

// access control for enumeration type

  /* public enum Student {
        case Name(String)
        case Mark(Int,Int,Int)
    }
    
    


    func AC () -> () {
        
    
    
    
    var studDetails = Student.Name("Swift")
    var studMarks = Student.Mark(98,97,95)
    
    switch studMarks {
    case .Name(let studName):
        print("Student name is: \(studName)")
    case .Mark(let Mark1, let Mark2, let Mark3):
        print("Student Marks are: \(Mark1),\(Mark2),\(Mark3).")
    default:
        print("Nothing")
    }

    } */



// Access control for sub class

/*public class cricket {
    
    private func print_new () {
        
        print("it is  super class")
    }
}

internal class tennis : cricket {
    
    override internal func print_new() {
        
        print("it is subclass")
        
    }
}


func AC () -> () {

 let cricinstance  = cricket()
 cricinstance.print_new()

 let tennisinstance = tennis()
  tennisinstance.print_new()
    
} */


// using with getter setter

/*class Samplepgm {
    private var counter: Int = 0 {
        willSet(newTotal) {
            print("Total Counter is: \(newTotal)")
        }
        didSet{
            if counter > oldValue {
                print("Newly Added Counter \(counter - oldValue)")
            }
        }
    }
}

func AC () -> () {

let NewCounter = Samplepgm()
NewCounter.counter = 100
NewCounter.counter = 800

} */


// Access control for intilizers and default intilizers


    // note : to declare subclass of the intilize 'required ' keyword needs to be defined before the init() function.



/*func AC () -> () {

class classA {
    
    required init() {
        
        var a = 10
        print(a)
    }
}


class classb : classA {
    
    required init () {
        
        var b = 30
        print(b)
    }
}


 let res = classA()
 let res1 = classb()

} */



// Access control for protocols 

// note : to do access control for protocol both should be at the same level like both class should be public or private. it won't let you access public protocol that inherits from internal protocol.


/* public protocol tcpprotocol {
    
    init(no1 : Int)
    
}


public class mainclass {
    
    var no1 : Int
    init(no1 : Int){
    
     self.no1 = no1

    
    }
}


class subclass : mainclass , tcpprotocol {
    
    var no2 : Int
    init(no1 : Int , no2 : Int) {
        
        self.no2 = no2
        super.init(no1: no1)
    }
    
    required override convenience init(no1: Int) {
        
        
        self.init(no1 : no1 , no2 : 0)
    }
    
    
}

func AC () -> () {

let res = mainclass.init(no1: 10)
let res1 = subclass(no1: 30, no2: 15)


print("response is \(res.no1)")
print("response 1 is \(res1.no1)")
print("response 1 is \(res1.no2)")

} */


// Access control for generics

/*public struct TOS<T> {
    
    var items = [T] ()
   private mutating func push (item : T) {
        
        items.append(item)
    }
    
    mutating func pop () -> T  {
        
        return items.removeLast()
        
        
    }
    
    
}


func AC () -> () {
    
    var tos = TOS<String>()
    tos.push("a")
    print(tos.items)
    
    tos.push("b")
    print(tos.items)
    
    tos.push("c")
    print(tos.items)
    
    tos.push("d")
    print(tos.items)
    
    var deletetos = tos.pop()
} */
    
    
    
// Access control using extensions


/*internal struct TOS<T> {
    
    var items = [T] ()
    internal mutating func push (item : T) {
        
        items.append(item)
    }
    
    mutating func pop () -> T  {
        
        return items.removeLast()
        
        
    }
    
    
}


func AC () -> () {
    
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


// Access control for type aliases



/*public protocol container {
    typealias ItemType
    mutating func append(item: ItemType)
    var count: Int { get }
    subscript(i: Int) -> ItemType { get }
}

struct Stack<T>: container {
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

func AC () -> () {

var tos = Stack<String>()
tos.push("Swift")
print(tos.items)

tos.push("Generics")
print(tos.items)

tos.push("Where Clause")
print(tos.items)

var eos = ["Swift", "Generics", "Where Clause"]
print(eos)

} */

public protocol container {
    typealias ItemType
    mutating func append(item: ItemType)
    var count: Int { get }
    subscript(i: Int) -> ItemType { get }
}

func AC () -> () {


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

var tos = StackIt<String>()
tos.push("Swift")
print(tos.items)

tos.push("Generics")
print(tos.items)

tos.push("Where Clause")
print(tos.items)

let eos = ["Swift", "Generics", "Where Clause"]
print(eos)
    

}