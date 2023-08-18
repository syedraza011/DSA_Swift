//: [Previous](@previous)

import Foundation

//Given a string, convert it to "Title Case"
//(capitalize the first letter of each word).
let str = "hello, i am adam"
print(TitleCase(str))

func TitleCase(_ str: String)-> String {
    let newStr = str.split(separator: " ")
    var final = ""
    for (index, word) in newStr.enumerated() {
        print("index: \(index) \tword : \(word.capitalized)")
        final += word.capitalized + " "
      
    }
  
  return final
}


