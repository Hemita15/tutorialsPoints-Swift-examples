//
//  extensions.swift
//  TutorialsPoint
//
//  Created by Hemita Pathak on 31/05/16.
//  Copyright © 2016 InformationWorks. All rights reserved.
//

import Foundation
import Cocoa

/*
extension Double {
    func celsiusToFahrenheit() -> Double {
        return self * 9 / 5 + 32
    }
    
    func fahrenheitToCelsius() -> Double {
        return (self - 32) * 5 / 9
    }
}

func ext() -> () {
    let boilingPointCelsius = 100.0
    let boilingPointFarenheit = boilingPointCelsius.celsiusToFahrenheit()
    print(boilingPointFarenheit) // 212.0
}
*/

/*extension Double {
    var km: Double { return self * 1_000.0 }
    var m: Double { return self }
    var cm: Double { return self / 100.0 }
    var mm: Double { return self / 1_000.0 }
    var ft: Double { return self / 3.28084 }
}

func ext() -> () {
    let oneInch = 25.4.mm
    print("One inch is \(oneInch) meters")
    // Prints "One inch is 0.0254 meters"
    let threeFeet = 3.ft
    print("Three feet is \(threeFeet) meters")
    // Prints "Three feet is 0.914399970739201 meters"
} */


/* extension Int {
    var add: Int {return self + 100 }
    var sub: Int { return self - 10 }
    var mul: Int { return self * 10 }
    var div: Int { return self / 5 }
}


func ext() -> () {
let addition = 3.add
print("Addition is \(addition)")

let subtraction = 120.sub
print("Subtraction is \(subtraction)")

let multiplication = 39.mul
print("Multiplication is \(multiplication)")

let division = 55.div
print("Division is \(division)")

let mix = 30.add + 34.sub
print("Mixed Type is \(mix)")

} */





    extension mult {
        init(x: sum, y: diff) {
            let X = x.num1 + x.num2
            let Y = y.no1 + y.no2
        }
    }

    
    struct sum {
    var num1 = 100, num2 = 200
}

struct diff {
    var no1 = 200, no2 = 100
}

struct mult {
    var a = sum()
    var b = diff()
}


    func ext () -> () {
let calc = mult()
print ("Inside mult block \(calc.a.num1, calc.a.num2)")
print("Inside mult block \(calc.b.no1, calc.b.no2)")

let memcalc = mult(a: sum(num1: 300, num2: 500),b: diff(no1: 300, no2: 100))

print("Inside mult block \(memcalc.a.num1, memcalc.a.num2)")
print("Inside mult block \(memcalc.b.no1, memcalc.b.no2)")



let a = sum(num1: 100, num2: 200)
print("Inside Sum Block:\( a.num1, a.num2)")


let b = diff(no1: 200, no2: 100)
print("Inside Diff Block: \(b.no1, b.no2)")

}








/*extension Int {
    enum calc {
        case add
        case sub
        case mult
        case div
        case anything
    }

    
    var print: calc {
        switch self {
        case 0:
            return .add
        case 1:
            return .sub
        case 2:
            return .mult
        case 3:
            return .div
        default:
            return .anything
        }
    }
}

  func ext () -> () {
func result(numb: [Int]) {
    for i in numb {
        switch i.print {
        case .add:
            print(" 10 ")
        case .sub:
            print(" 20 ")
        case .mult:
            print(" 30 ")
        case .div:
            print(" 40 ")
        default:
            print(" 50 ")
            
        }
    }
}

result([0, 1, 2, 3, 4, 7])
} */