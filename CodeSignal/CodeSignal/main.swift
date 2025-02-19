//
//  main.swift
//  CodeSignal
//
//  Created by USER on 2/19/25.
//

import Foundation

func solution(inputArray: [String]) -> Bool {
    // 모든 가능한 순열을 생성하고 검사
    return permutations(of: inputArray).contains { arrangement in
        isValidArrangement(arrangement)
    }
}

// 문자열 배열의 모든 순열을 생성하는 함수
func permutations(of array: [String]) -> [[String]] {
    if array.count <= 1 { return [array] }
    
    var result: [[String]] = []
    var rest = array
    
    for i in 0..<array.count {
        let current = rest.remove(at: i)
        let perms = permutations(of: rest)
        result += perms.map { [current] + $0 }
        rest.insert(current, at: i)
    }
    
    return result
}

// 주어진 배열이 유효한 배열인지 검사하는 함수
func isValidArrangement(_ arr: [String]) -> Bool {
    for i in 0..<arr.count-1 {
        let differences = zip(arr[i], arr[i+1]).filter { $0 != $1 }.count
        if differences != 1 {
            return false
        }
    }
    return true
}

print(solution(inputArray: ["aba", "bbb", "bab"]))  // false
print(solution(inputArray: ["ab", "bb", "aa"]))     // true
print(solution(inputArray: ["q", "q"]))             // false
print(solution(inputArray: ["zzz", "zbz", "zzz"]))  // true
print(solution(inputArray: ["abc", "abx", "axx", "abc"])) // false
