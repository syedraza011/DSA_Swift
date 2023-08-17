
import Foundation

// **Count Vowels and Consonants:**
//Write a program to count the number of vowels and consonants in a given string.
//
let str = "Hello"
let arr = str.split(separator: "")
print(arr)
var vowe = 0
var alpha = 0
for chara in str {
    
    if isVowel(char: chara) {
        vowe += 1
    }else {
        alpha += 1
    }

}
print("Amount of Vowels is: \(vowe)")
print("Amount of Consonents is: \(alpha)")
func isVowel(char: Character)-> Bool{
        let vowels = "aeiou"
            return vowels.contains(char)
        }
    
// 
