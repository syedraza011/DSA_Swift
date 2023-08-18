//: [Previous](@previous)

import Foundation

// using String **Palindrome Check:**
//Create a function that checks if a given string is a palindrome (reads the same forwards and backwards).


let str = "ma dami'mad am12321"

let letters = str.filter { $0.isLetter }.lowercased()
print("Filtered: \(letters)")
let reversedLetters = letters.reversed()

if letters == String(reversedLetters) {
    print("Palindrome")
} else {
    print("Not a palindrome")
}
