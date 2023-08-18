//: [Previous](@previous)

import Foundation

//  replace vowels with " "
let Str = "HelloiamRaza"
let newArr = Str.split(separator: "")
print("New Array: \(newArr)")
var result = ""
for singleChar in Str {
    if ISVowel(char: singleChar) {
        result += " "
    }else {
        result += String(singleChar)
    }
}
let finalResult = String(result)
print("new Replaced str is: \(result)")


func ISVowel(char: Character)->Bool {
    let vowels = "AEIOUaeiou"
    return vowels.contains(char)
}
