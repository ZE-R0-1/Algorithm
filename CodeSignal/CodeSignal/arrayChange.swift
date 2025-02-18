//
//  main.swift
//  CodeSignal
//
//  Created by USER on 2/18/25.
//

import Foundation

func solution(inputArray: [Int]) -> Int {
    var moves = 0
    var array = inputArray
    
    for i in 1..<array.count {
        if array[i] <= array[i-1] {
            let increase = array[i-1] - array[i] + 1
            moves += increase
            array[i] += increase
        }
    }
    print(array)
    return moves
}

print(solution(inputArray: [-1000, 0, -2, 0]))
