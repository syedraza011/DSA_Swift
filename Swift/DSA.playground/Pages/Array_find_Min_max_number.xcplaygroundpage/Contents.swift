//: [Previous](@previous)

import Foundation

//1. **Find Maximum and Minimum:**
//Write a function to find the maximum and minimum elements in an array of integers.
var arr = [30,50,79,80,85,1,9000]

print("Given Array: \(arr)")
// we can sort it
var newArr = arr.sorted()
print("new Sorted Array : \(newArr)")
// we can grab first and last element easy
print("smallest :\(newArr[0])")
print("Largest :\(newArr[newArr.count-1])")

//other way of finding smallest and largest
let myArr = [30,50,79,80,85,10000,9]

var small = myArr[0]
var large = myArr[0]
for i in 0..<myArr.count {
    if myArr[i] < small
        {
            small = myArr[i]
        }
    if myArr[i] > large
        {
            large = myArr[i]
        }
}
print("smallest of small :\(small)")
print("Largest of large :\(large)")
