//
//  main.swift
//  SimpleCalc
//
//  Created by Sanjana Galgalikar on 10/5/16.
//  Copyright © 2016 Sanjana Galgalikar. All rights reserved.
//

import Foundation

var askAgain: Bool = true

var moreInput: Bool = true
var elements: [String] = []
var result = 0


print("Enter an expression, separating elements with returns OR enter 1 value and fact or any number of values and count or avg")


while moreInput {
    elements.append(readLine(strippingNewline: true)!)
    var arrayLength = elements.count //array length
    
    if (arrayLength == 3) {
        if (elements[1] == "+" || elements[1] == "-" || elements[1] == "*" || elements[1] == "/" || elements[1] == "%"){
            moreInput = false //will exit while loop
            
            if (elements[1] == "+"){
                result = Int(elements[0])! + Int(elements[2])!
            } else if (elements[1] == "-") {
                result = Int(elements[0])! - Int(elements[2])!
            } else if (elements[1] == "/") {
                result = Int(elements[0])! / Int(elements[2])!
            } else if (elements[1] == "%"){
                result = Int(elements[0])! % Int(elements[2])!
            } else if (elements[1] == "*") {
                result = Int(elements[0])! * Int(elements[2])!
            }
            
            print("Result: " + String(result))
        }
    }
    
    if (elements[elements.count - 1] == "count") {
        moreInput = false
        print("Result: " + String(elements.count - 1))
    }
    
    if (elements[elements.count - 1] == "avg") {
        moreInput = false
        var numElements = elements.count - 2
        var add = 0
        for int in 1...numElements {
            add += Int(elements[int])!
        }
        result = add / numElements
        print("Result: " + String(result))
    }
    
    if (elements[elements.count - 1] == "fact") {
        moreInput = false
        var bound = Int(elements[0])//number to take factorial of
        var numToMult = bound
        var sum = 1
        
        while (numToMult != 0) {
            sum *= numToMult!
            numToMult = numToMult! - 1
        }
        print("Result: " + String(sum))
    }
}



