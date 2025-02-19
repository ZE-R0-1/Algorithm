//
//  main.swift
//  CodeSignal
//
//  Created by USER on 2/18/25.
//

import Foundation

func solution(matrix: [[Bool]]) -> [[Int]] {
    let rows = matrix.count
    let cols = matrix[0].count
    var result = Array(repeating: Array(repeating: 0, count: cols), count: rows)
    
    for i in 0..<rows {
        for j in 0..<cols {
            for x in max(0, i-1)...min(rows-1, i+1) {
                for y in max(0, j-1)...min(cols-1, j+1) {
                    if (x != i || y != j) && matrix[x][y] {
                        result[i][j] += 1
                    }
                }
            }
        }
    }
    
    return result
}

let matrix = [[true, false, false], [false, true, false], [false, false, false]]

print(solution(matrix: matrix))
