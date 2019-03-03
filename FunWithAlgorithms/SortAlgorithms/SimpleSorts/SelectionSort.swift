//
//  SelectionSort.swift
//  FunWithAlgorithms
//
//  Created by Аскар on 3/3/19.
//  Copyright © 2019 askar.ulubayev. All rights reserved.
//

import Foundation

func selectionSort<T: Comparable>(array: [T]) -> Array<T> {
    var sortedArray = array
    for i in 0..<sortedArray.count - 1 {
        var lowestElementIndex = i
        for j in i + 1..<sortedArray.count {
            if sortedArray[j] < sortedArray[lowestElementIndex] {
                lowestElementIndex = j
            }
        }
        if i != lowestElementIndex {
            sortedArray.swapAt(i, lowestElementIndex)
        }
    }
    return sortedArray
}


