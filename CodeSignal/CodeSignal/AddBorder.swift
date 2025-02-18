//
//  main.swift
//  CodeSignal
//
//  Created by USER on 2/18/25.
//

import Foundation

func solution(picture: [String]) -> [String] {
    let borderLine = String(repeating: "*", count: picture.count + 2)
    let borderedLines = picture.map { "*\($0)*" }
    return [borderLine] + borderedLines + [borderLine]
}

print(solution(picture: ["abc", "ded"]))
