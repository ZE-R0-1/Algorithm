//
//  main.swift
//  CodeSignal
//
//  Created by USER on 2/18/25.
//

import Foundation

func solution(a: [Int]) -> [Int] {
    var team1Sum: Int = 0
    var team2Sum: Int = 0
    
    for (index, weight) in a.enumerated() {
        if index % 2 == 0 {
            team1Sum += weight
        } else {
            team2Sum += weight
        }
    }
    
    return [team1Sum, team2Sum]
}

print(solution(a: [50, 60, 60, 45, 70]))
