//
//  main.swift
//  CodeSignal
//
//  Created by USER on 2/18/25.
//

import Foundation

func solution(image: [[Int]]) -> [[Int]] {
    let rows = image.count
    let cols = image[0].count
    var result = [[Int]]()
    
    for i in 1...(rows-2) {
        var row = [Int]()
        for j in 1...(cols-2) {
            var sum = 0
            for x in (i-1)...(i+1) {
                for y in (j-1)...(j+1) {
                    sum += image[x][y]
                }
            }
            row.append(sum / 9)
        }
        result.append(row)
    }
    return result
}

let image = [[1,1,1], [1,7,1], [1,1,1]]

print(solution(image: image))
