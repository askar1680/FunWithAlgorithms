//
//  ShellSort.swift
//  FunWithAlgorithms
//
//  Created by Аскар on 3/3/19.
//  Copyright © 2019 askar.ulubayev. All rights reserved.
//

import Foundation

func shellSort(array: [Int]) -> Array<Int> {
    var sortedArray = array
    var step = sortedArray.count / 2
    while step > 0 {
        for position in 0..<step {
            insertionSort(array: &sortedArray, start: position, step: step)
        }
        step /= 2
    }
    return sortedArray
}

func insertionSort(array: inout [Int], start: Int, step: Int) {
    for i in stride(from: (start + step), to: array.count, by: step) {
        let currentValue = array[i]
        var position = i
        while position >= step && array[position - step] > currentValue {
            array[position] = array[position - step]
            position -= step
        }
        array[position] = currentValue
    }
}
