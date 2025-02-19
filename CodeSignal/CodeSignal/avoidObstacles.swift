//
//  main.swift
//  CodeSignal
//
//  Created by USER on 2/18/25.
//

import Foundation

func solution(inputArray: [Int]) -> Int {
    var jump = 2
    
    while true {
        if canJump = inputArray.allSatisfy { obstacle in
            obstacle % jump != 0
        }
        
        if canJump {
            return jump
        }
        
        jump += 1
    }
}

print(solution(inputArray: [5, 3, 6, 7, 9]))
