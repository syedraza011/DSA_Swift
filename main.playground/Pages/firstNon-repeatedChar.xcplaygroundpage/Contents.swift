//: [Previous](@previous)

import Foundation

let str = "maddam"
var dictionary: [String:Int] = [:]
for char in str {
    if let count = dictionary[String(char)] {
        dictionary[String(char)] = count+1
    }else {
        dictionary[String(char)] = 1
    }
}
print(dictionary)
var isNill = false
for (key, value) in dictionary{
    if  value == 1 {
        print("Key \(key) and the count is: \(value)")
        break
    } else {
    isNill = true
    }
}
if isNill {
    print("Not a single char all of the available are more than one")
}

