//
//  main.swift
//  CodeSignal
//
//  Created by USER on 2/19/25.
//

import Foundation

func solution(inputArray: [Int], elemToReplace: Int, substitutionElem: Int) -> [Int] {
    // map을 사용하여 각 요소를 검사하고 필요한 경우 교체
    return inputArray.map { $0 == elemToReplace ? substitutionElem : $0 }
}

print(solution(inputArray: [1, 2, 1], elemToReplace: 1, substitutionElem: 3))
// 결과: [3, 2, 3]

print(solution(inputArray: [1, 2, 3, 4, 5], elemToReplace: 3, substitutionElem: 0))
// 결과: [1, 2, 0, 4, 5]

print(solution(inputArray: [1, 1, 1], elemToReplace: 1, substitutionElem: 10))
// 결과: [10, 10, 10]
