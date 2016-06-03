//
//  protocols.swift
//  TutorialsPoint
//
//  Created by Hemita Pathak on 01/06/16.
//  Copyright © 2016 InformationWorks. All rights reserved.
//

import Foundation

import Cocoa


/* protocol classa {
    
    var marks: Int { get set }
    var result: Bool { get }
    
    func attendance() -> String
    func markssecured() -> String
    
}

protocol classb: classa {
    
    var present: Bool { get set }
    var subject: String { get set }
    var stname: String { get set }
    
}

class classc: classb {
    var marks = 96
    let result = true
    var present = false
    var subject = "Swift Protocols"
    var stname = "Protocols"
    
    func attendance() -> String {
        return "The \(stname) has secured 99% attendance"
    }
    
    func markssecured() -> String {
        return "\(stname) has scored \(marks)"
    }
}

func protocols () -> () {

let studdet = classc()
studdet.stname = "Swift"
studdet.marks = 98
studdet.markssecured()

print(studdet.marks)
print(studdet.result)
print(studdet.present)
print(studdet.subject)
print(studdet.stname)
} */



/* note : always write protocol and extensions out of the any func , class, struct but extecutable statements like "print"
 write into the func that you eill call i the main.swift  */





/*protocol daysofaweek {
    mutating func print_new()
}

enum days: daysofaweek {
    case sun, mon, tue, wed, thurs, fri, sat
    mutating func print_new() {
        switch self {
        case sun:
            self = sun
            print("Sunday")
        case mon:
            self = mon
            print("Monday")
        case tue:
            self = tue
            print("Tuesday")
        case wed:
            self = wed
            print("Wednesday")
        case thurs:
            self = thurs
            print("Thursday")
        case fri:
            self = fri
            print("Friday")
        case sat:
            self = sat
            print("Saturday")
        default:
            print("NO Such Day")
        }
    }
}

func protocols () -> () {

var res = days.wed
res.print_new()

} */


//class impmlimentation of protocol

/*protocol tcpprotocol {
    init(no1: Int)
}

class mainClass {
    var no1: Int
    init(no1: Int) {
        self.no1 = no1
    }
}

class subClass: mainClass, tcpprotocol {
    var no2: Int
    init(no1: Int, no2 : Int) {
        self.no2 = no2
        super.init(no1:no1)
    }
    
    required override convenience init(no1: Int)  {
        self.init(no1:no1, no2:0)
    }
}
let res = mainClass(no1: 20)
let print_new = subClass(no1: 30, no2: 50)

func protocols () -> () {

print("res is: \(res.no1)")
print("res is: \(print_new.no1)")
print("res is: \(print_new.no2)")

} */




/*protocol generator {
    
    typealias members
    func next () ->  members?
    
}


func protocols() -> () {

var items = [10,20,30].generate()
while let x = items.next() {
    
    print(x)
}

for list in map([1,2,3] -> {i in i*5}){
    print(list)
}

print([100,200,300])
print(map[1,2,3], -> {i in i*10})

} */



// protocol inheritance

/*protocol classa {
    var no1: Int { get set }
    func calc(sum: Int)
}

protocol result {
    func print(target: classa)
}

class student2: result {
    func print(target: classa) {
        target.calc(1)
    }
}

class classb: result {
    func print(target: classa) {
        target.calc(5)
    }
}

class student: classa {
    var no1: Int = 10
    
    func calc(sum: Int) {
        no1 -= sum
        print("Student attempted \(sum) times to pass")
        
        if no1 <= 0 {
            print("Student is absent for exam")
        }
    }
}

class Player {
    var stmark: result!
    
    init(stmark: result) {
        self.stmark = stmark
    }
    
    func print(target: classa) {
        stmark.print(target)
    }
}

var marks = Player(stmark: student2())
var marksec = student()

func protocols() -> () {

marks.print(marksec)
marks.print(marksec)
marks.print(marksec)
marks.stmark = classb()
marks.print(marksec)
marks.print(marksec)
marks.print(marksec) */


// class protocols

/*protocol tcpprotocol {
    init(no1: Int)
}

class mainClass {
    var no1: Int
    init(no1: Int) {
        self.no1 = no1
    }
}

class subClass: mainClass, tcpprotocol {
    var no2: Int
    init(no1: Int, no2 : Int) {
        self.no2 = no2
        super.init(no1:no1)
    }
    
    required override convenience init(no1: Int)  {
        self.init(no1:no1, no2:0)
    }
}

let res = mainClass(no1: 20)
let print_new = subClass(no1: 30, no2: 50)

func protocols () -> () {

print("res is \(res.no1)")
print("res is \(print_new.no1)")
print("res is \(print_new.no2)")
    
    

} */


// protocol composition

/*protocol stname {
    
    var name : String {get}
    
}

protocol stage {
    
    var age : Int {get}
    
}

struct person : stname, stage {

    var name = String
    var age = Int
    
}
func print(celebrator: protocol<stname, stage>) {
    print("\(celebrator.name) is \(celebrator.age) years old")
}

func protocols () -> () {

let studname = person(name: "priya", age: 23)
print(studname)

let stud = person(name: "Rehan", age: 29)
print(stud)

let student = person(name: "Roshan", age: 19)
print(student)
} */



/*protocol stname {
    var name: String { get }
}

protocol stage {
    var age: Int { get }
}

struct Person: stname, stage {
    var name: String
    var age: Int
}


func protocols() -> () {
    
func print_new(celebrator: protocol<stname, stage>) {
    print("\(celebrator.name) is \(celebrator.age) years old")
}



let studname = Person(name: "Priya", age: 21)
print(studname)

let stud = Person(name: "Rehan", age: 29)
print(stud)

let student = Person(name: "Roshan", age: 19)
print(student)

} */



//checking for protocol conformance

/*@objc protocol rectangle {
    var area: Double { get }
}

@objc class Circle: rectangle {
    let pi = 3.1415927
    var radius: Double
    var area: Double { return pi * radius * radius }
    init(radius: Double) { self.radius = radius }
}

@objc class result: rectangle {
    var area: Double
    init(area: Double) { self.area = area }
}


class sides {
    var rectsides: Int
    init(rectsides: Int) { self.rectsides = rectsides }
}

func protocols () -> () {

let objects: [AnyObject] = [Circle(radius: 2.0),result(area: 198),sides(rectsides: 4)]

for object in objects {
    if let objectWithArea = object as? rectangle {
        print("Area is \(objectWithArea.area)")
    } else {
        print("Rectangle area is not defined")
    }
 }

} */



