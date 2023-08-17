import UIKit

var greeting = "Hello, playground"
// "Hello5"

//access 'o' or any character

//remove number from it
//remove chars from it
//use of array
let str: String = "Hello5"
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
