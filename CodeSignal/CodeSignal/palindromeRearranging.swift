//
//  main.swift
//  CodeSignal
//
//  Created by USER on 2/18/25.
//

import Foundation

func solution(inputString: String) -> Bool {
    
    var charCount: [Character: Int] = [:]
    
    for char in inputString {
        charCount[char, default: 0] += 1
    }
    
    let oddCounts = charCount.values.filter { $0 % 2 == 1 }
    
    return oddCounts.count <= 1
}

print(solution(inputString: "aabbccd"))
