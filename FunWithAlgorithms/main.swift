//
//  main.swift
//  FunWithAlgorithms
//
//  Created by Аскар on 3/3/19.
//  Copyright © 2019 askar.ulubayev. All rights reserved.
//

import Foundation

let array = [7,3,1,4,0,2,9]
let stringArray = ["a", "u", "q", "p", "s", "b", "c"]

let sortedArray = heapsort(array, <)
print(sortedArray)


let redBlackTree = RedBlackTree<Int>()
for item in array {
    redBlackTree.insert(key: item)
}

print(twoSumProblem(array, k: 11) as Any)

print(threeSum(array, k: 17))
