//: [Previous](@previous)

import Foundation

// Write a function to reverse a given string.
//For example, "hello" should become "olleh""
 let str = "zqmahello"
var result = ""


// adding char to result and adding space after every element
for  char in str {
    result += String(char) + " "
}

// sorting
let sortted = String(str.sorted())
print("sortted \(sortted)")



// changing to uppercase
print(str.uppercased())

// reversing the string
let newStr = String(str.reversed())
print(newStr)
print(result)

