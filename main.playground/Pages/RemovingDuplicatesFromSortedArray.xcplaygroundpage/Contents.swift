//: [Previous](@previous)

import Foundation


//Given an integer array nums sorted in non-decreasing order, remove the duplicates in-place such that each unique element appears only once. The relative order of the elements should be kept the same. Then return the number of unique elements in nums.
//
//Consider the number of unique elements of nums to be k, to get accepted, you need to do the following things:
//
//Change the array nums such that the first k elements of nums contain the unique elements in the order they were present in nums initially. The remaining elements of nums are not important as well as the size of nums.
//Return k.


let arr = [1,1,1,2,2,2,3,4,5,5,5]

func removeDuplicates (_ arr: [Int])-> [Int] {
    var result:[Int] = []
    for i in 0..<arr.count {
        if !result.contains(arr[i]) {
            result.append(arr[i])
        }
      
    }
    return result
}
print(removeDuplicates(arr))

 //now 2d method without using extra array and without return an array as well

var nums = [1, 1,2]

func removingDuplicates(_ nums: inout [Int])->Int {
    var count  = 0
    var i = 0
    while i+1 < nums.count {
        if nums[i] == nums[i + 1] {
            nums.remove(at: i + 1)
        } else {
            i += 1
            count += 1
        }
    }
    return count
}

removingDuplicates(&nums)
print(nums)
