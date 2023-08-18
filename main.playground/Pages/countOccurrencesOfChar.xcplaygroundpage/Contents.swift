import Foundation

//3. Create a function to count the occurrences of a specific character in a string.
//let str = "HelloiamO"
////using dictinary

let str = "Hello0"

var dic: [String: Int] = [:] // Specify the type explicitly for better clarity
for char in str {
    print(dic[String(char)])
    if let count = dic[String(char)] {
        dic[String(char)] = count + 1
     
    } else {
        dic[String(char)] = 1
    }
}
print(dic)
