import UIKit

var greeting = "Hello, playground"
// "Hello5"

//access 'o' or any character

//remove number from it
//remove chars from it
//use of array
let str = "zmHello5t"

let num = str.contains(where: {$0.isNumber})
print(num)

if let lastChar = str.last, lastChar.isNumber {
    print("it is a number ")
}else {
    print("it is a not number ")
}
//access only number
for (index, char) in str.enumerated() {
    if char.isNumber
    {
        print("\(index), and \(char)")
    }else {
        print("char is ->", char)
    }
}
////sort these
let sorted = str.sorted {  (char1 , char2) in
    return char1 < char2
    
}
let sortedStr = String(sorted)
print(sortedStr)

