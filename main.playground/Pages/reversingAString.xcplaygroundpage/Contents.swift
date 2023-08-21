

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

// "Hello5"

//access 'o' or any character

//remove number from it
//remove chars from it
//use of array
let strr = "zmHello5"

let num = strr.contains(where: {$0.isNumber})
print(num)

if let lastChar = strr.last, lastChar.isNumber {
    print("it is a number ")
}else {
    print("it is a not number ")
}
//access only number
for (index, char) in strr.enumerated() {
    if char.isNumber
    {
        print("\(index), and \(char)")
    }else {
        print("char is ->", char)
    }
}
////sort these
let sorted = strr.sorted {  (char1 , char2) in
    return char1 < char2
    
}
let sortedStr = String(sorted)
print(sortedStr)
