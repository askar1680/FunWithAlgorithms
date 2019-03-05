//
//  SumAlgorithms.swift
//  FunWithAlgorithms
//
//  Created by Аскар on 3/4/19.
//  Copyright © 2019 askar.ulubayev. All rights reserved.
//

import Foundation

func twoSumProblem(_ a: [Int], k: Int) -> ((Int, Int))? {
    var i = 0
    var j = a.count - 1
    let sorted = a.sorted()
    while i < j {
        let sum = sorted[i] + sorted[j]
        if sum == k {
            return (sorted[i], sorted[j])
        } else if sum < k {
            i += 1
        } else {
            j -= 1
        }
    }
    return nil
}

func threeSum(_ nums: [Int], k: Int) -> [[Int]] {
    var resNums = [[Int]]()
    if nums.count < 3 {
        return resNums
    }
    
    let sortedNums = nums.sorted()
    
    for i in 0...sortedNums.count - 1 {
        if ((i > 0) && (sortedNums[i] == sortedNums[i - 1])) {
            continue
        }
        var left = i + 1
        var right = sortedNums.count - 1
        let first = sortedNums[i]
        while right > left {
            let second = sortedNums[left]
            let third = sortedNums[right]
            let sum = first + second + third
            if sum < k {
                left += 1
            }
            else if sum > k {
                right -= 1
            }
            else {
                if ((left - 1 > i) && (sortedNums[left] == sortedNums[left - 1])) {
                    left += 1
                }
                else {
                    resNums.append([first,second,third])
                    left += 1
                }
            }
        }
    }
    
    return resNums
}
