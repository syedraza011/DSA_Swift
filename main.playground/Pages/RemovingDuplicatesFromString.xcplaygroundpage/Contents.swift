

import Foundation

//using String **Remove Duplicates:**
//Create a function that removes duplicate characters from a string.

let str = "HEllloEEE"
let newStr = str.lowercased()
var result = " "
for char in newStr {
    if !result.contains(char) {
        result += String(char)
    }
}
print("final Str: \(result)")


