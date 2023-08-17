//: [Previous](@previous)

import Foundation


// removing a number from a string
let string = "ABCMZ5 MZZTOM4"
let newStr = string.split(separator: " ")
print(newStr)
var result = ""
for i in 0..<newStr.count {
//    print(newStr[i])
    for char in newStr[i] {
        if !char.isNumber {
            result += String(char)
        }
    }
    result += " "
}
print("Results are: \(result)")



