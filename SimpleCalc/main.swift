//
//  main.swift
//  SimpleCalc
//
//  Created by Sanjana Galgalikar on 10/5/16.
//  Copyright © 2016 Sanjana Galgalikar. All rights reserved.
//

import Foundation



print("enter a number")
var num1 = readLine(strippingNewline: true)
print("enter an operation")
var op = readLine(strippingNewline: true)
print("enter a number")
var num2 = readLine(strippingNewline: true)

var result = 0

if (op == "+"){
    result = Int(num1!)! + Int(num2!)!
} else if (op == "-") {
    result = Int(num1!)! - Int(num2!)!
} else if (op == "/") {
    result = Int(num1!)! / Int(num2!)!
} else if (op == "%"){
    result = Int(num1!)! % Int(num2!)!
} else {
    print("invalid operand")
}

print("The result is \(result)")

//if 3 chars entered check for valid operand in the middle and output
//correct result
//otherwise user can enter as many numbers as possible and type
//"count", "avg" or "fact" at the end
//write count, avg, and fact methods


