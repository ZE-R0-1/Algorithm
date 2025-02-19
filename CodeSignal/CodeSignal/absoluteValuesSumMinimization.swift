//
//  main.swift
//  CodeSignal
//
//  Created by USER on 2/19/25.
//

import Foundation

func solution(a: [Int]) -> Int {
    // 배열의 중간 인덱스를 구함 (짝수 길이의 경우 작은 쪽 선택)
    return a[(a.count - 1) / 2]
}


print(solution(a: [2, 4, 7]))          // 결과: 4
print(solution(a: [2, 3]))             // 결과: 2
print(solution(a: [1, 1, 3, 4]))       // 결과: 1
print(solution(a: [23]))               // 결과: 23
