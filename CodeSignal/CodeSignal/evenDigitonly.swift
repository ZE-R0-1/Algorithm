//
//  main.swift
//  CodeSignal
//
//  Created by USER on 2/19/25.
//

import Foundation

func solution(n: Int) -> Bool {
    // 숫자를 문자열로 변환하여 각 자릿수를 확인
    let digits = String(n)
    
    // 모든 자릿수가 짝수인지 확인
    return digits.allSatisfy { char in
        guard let digit = Int(String(char)) else { return false }
        return digit % 2 == 0
    }
}

print(solution(n: 248622))  // true (2,4,8,6,2,2 모두 짝수)
print(solution(n: 642386))  // false (3은 홀수)
print(solution(n: 248842))  // true
print(solution(n: 1))       // false
print(solution(n: 8))       // true
