//
//  main.swift
//  CodeSignal
//
//  Created by USER on 2/19/25.
//

import Foundation

func solution(inputString: String) -> String {
    return inputString.map { char in
        // 'z'인 경우 'a'로, 그 외에는 다음 알파벳으로
        char == "z" ? "a" : String(UnicodeScalar(char.asciiValue! + 1))
    }.joined()
}

print(solution(inputString: "crazy"))    // 결과: "dsbaz"
// c -> d
// r -> s
// a -> b
// z -> a
// y -> z

print(solution(inputString: "abc"))     // 결과: "bcd"
print(solution(inputString: "z"))       // 결과: "a"
print(solution(inputString: "aaaabbbccd")) // 결과: "bbbbcccdde"
