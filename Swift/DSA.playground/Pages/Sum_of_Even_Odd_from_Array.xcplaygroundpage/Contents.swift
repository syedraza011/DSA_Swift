//: [Previous](@previous)

import Foundation

//2. **Even and Odd Sum:**
//Create a program that calculates the sum of even and odd numbers separately in an array of integers.
let arr = [10,2,3,8,11,5]
var even = 0
var odd = 0

for i in 0..<arr.count
{
    var num = arr[i]
    if (num % 2 == 0){
        even += num
    }else {
        odd += num
    }
    
}
print("Sum of Evens: \(even)")
print("Some of Odd: \(odd)")


