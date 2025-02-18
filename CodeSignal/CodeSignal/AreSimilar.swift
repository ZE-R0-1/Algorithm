//
//  main.swift
//  CodeSignal
//
//  Created by USER on 2/18/25.
//

import Foundation

func solution(a: [Int], b: [Int]) -> Bool {
    if a == b {
        return true
    }
    
    var difference: [(Int, Int)] = []
    
    for i in 0..<a.count {
        if a[i] != b[i] {
            difference.append((a[i], b[i]))
            
            if difference.count > 2 {
                return false
            }
        }
    }
    
    print(difference)
    print(difference[0].1)
    return difference.count == 2 && difference[0].0 == difference[1].1 && difference[0].1 == difference[1].0
}

print(solution(a: [1,2,3], b: [2,1,3]))
