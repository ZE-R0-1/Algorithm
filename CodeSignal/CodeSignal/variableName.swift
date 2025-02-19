//
//  main.swift
//  CodeSignal
//
//  Created by USER on 2/19/25.
//

import Foundation

func solution(name: String) -> Bool {
    // 빈 문자열이면 false
    guard !name.isEmpty else { return false }
    
    // 첫 글자가 숫자인지 확인
    guard let firstChar = name.first, !firstChar.isNumber else {
        return false
    }
    
    // 모든 문자가 문자, 숫자 또는 밑줄인지 확인
    return name.allSatisfy { char in
        char.isLetter || char.isNumber || char == "_"
    }
}

print(solution(name: "var_1_Int"))  // true
print(solution(name: "qq-q"))       // false (하이픈 사용 불가)
print(solution(name: "2w2"))        // false (숫자로 시작)
print(solution(name: "_23"))        // true
print(solution(name: "a b"))        // false (공백 사용 불가)
print(solution(name: "1"))          // false (숫자로 시작)
