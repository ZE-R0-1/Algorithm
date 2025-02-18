//
//  main.swift
//  CodeSignal
//
//  Created by USER on 2/18/25.
//

import Foundation

func solution(a: [Int]) -> [Int] {
    let sortedPeople = a.filter { $0 != -1 }.sorted()
    
    var result = a
    var peopleIndex = 0
    
    for i in 0..<a.count {
        if result[i] != -1 {
            result[i] = sortedPeople[peopleIndex]
            peopleIndex += 1
        }
    }
    
    return result
}

print(solution(a: [-1, 150, 190, 170, -1, -1, 160, 180]))
