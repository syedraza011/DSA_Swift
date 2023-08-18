//: [Previous](@previous)

import Foundation


// **using Strings only Anagrams Check:**
//Write a function that checks if two strings are anagrams
//(contain the same characters in a different order).
let str = "ltisteen"
let str1 = "silentte"

if str.sorted() == str1.sorted() {
    print("True")
}else {
    print("False")
}
