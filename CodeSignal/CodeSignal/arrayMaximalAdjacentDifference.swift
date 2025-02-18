//
//  main.swift
//  CodeSignal
//
//  Created by USER on 2/18/25.
//

import Foundation

func solution(inputArray: [Int]) -> Int {
    var num = 0
    
    for i in 1..<inputArray.count {
        let diff = abs(inputArray[i] - inputArray[i-1])
        num = max(diff, num)
    }
    
    return num
}

print(solution(inputArray: [-1, 4, -6, 23, 1]))
