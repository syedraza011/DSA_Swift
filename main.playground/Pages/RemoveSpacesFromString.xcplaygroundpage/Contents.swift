//: [Previous](@previous)

import Foundation

//5. Write a program to remove all spaces from a string.
let str = "Hello i am Adam"
var newStr = ""
for char in str {
    if char.isLetter {
        newStr += String((char))
    }
}
print(newStr)


//other way of doing question
let string = "Removed All Spaces From String"
let newString = string.replacingOccurrences(of: " ", with: "")
print(newString)
