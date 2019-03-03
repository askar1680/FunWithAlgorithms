//
//  BubbleSort.swift
//  FunWithAlgorithms
//
//  Created by Аскар on 3/3/19.
//  Copyright © 2019 askar.ulubayev. All rights reserved.
//

import Foundation

func bubbleSort(array: [Int]) -> [Int] {
    var sortedArray = array
    for i in 0..<sortedArray.count {
        for j in 1..<sortedArray.count - i {
            if sortedArray[j] < sortedArray[j-1] {
                sortedArray.swapAt(j-1, j)
            }
        }
    }
    return sortedArray
}
