//
//  InsertionSort.swift
//  FunWithAlgorithms
//
//  Created by Аскар on 3/3/19.
//  Copyright © 2019 askar.ulubayev. All rights reserved.
//

import Foundation

func insertionSort<T: Comparable>(array: [T]) -> Array<T> {
    var sortedArray = array
    for i in 1 ..< sortedArray.count{
        var j = i
        let temp = sortedArray[j]
        while j > 0 && temp < sortedArray[j - 1] {
            sortedArray[j] = sortedArray[j - 1]
            j -= 1
        }
        sortedArray[j] = temp
    }
    
    return sortedArray
}
