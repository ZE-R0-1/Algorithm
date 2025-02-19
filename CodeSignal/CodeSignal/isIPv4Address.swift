//
//  main.swift
//  CodeSignal
//
//  Created by USER on 2/18/25.
//

import Foundation

func solution(inputString: String) -> Bool {
    let nums = inputString.split(separator: ".")
    
    guard nums.count == 4 else {
        return false
    }
    
    for num in nums {
        if num.isEmpty || (num.first == "0" && num.count > 1) {
            return false
        }
        
        guard let number = Int(num), number >= 0 && number <= 255 else {
            return false
        }
    }
    
    return true
}

print(solution(inputString: "192.22.0.0"))
