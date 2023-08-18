//: [Previous](@previous)

import Foundation

//7. Write a program to find the longest common prefix among an array of strings.

//let strrings = "flower flight flour"
////print(str)
////
////let newStr = str.split(separator: " ")
////print(newStr)
////for (index, char) in newStr.enumerated() {
////
////}
//func longestCommonPrefix(_ strings: [String]) -> String {
//    guard let firstString = strings.first else {
//        return "" // Return an empty string if the array is empty
//    }
//
//    for (index, char) in firstString.enumerated() {
//        for string in strings {
//            if index >= string.count || string[string.index(string.startIndex, offsetBy: index)] != char {
//                return String(firstString.prefix(index))
//            }
//        }
//    }
//}
//
let inputStrings = "flower floight flour"
let stringArray = inputStrings.split(separator: " ").map { String($0) }

let commonPrefix = longestCommonPrefix(stringArray)


print("Longest common prefix: \(commonPrefix)") // Output: "flo"
func longestCommonPrefix(_ strings: [String]) -> String {
    guard let firstString = strings.first else {
        return "" // Return an empty string if the array is empty
    }
    
    for (index, char) in firstString.enumerated() {
        for string in strings {
            if index >= string.count || string[string.index(string.startIndex, offsetBy: index)] != char {
                return String(firstString.prefix(index))
            }
        }
    }
    
    return firstString // All strings match until the end of the first string
}


