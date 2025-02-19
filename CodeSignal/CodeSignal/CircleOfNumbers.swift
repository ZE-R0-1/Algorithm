//
//  main.swift
//  CodeSignal
//
//  Created by USER on 2/19/25.
//

import Foundation

func solution(n: Int, firstNumber: Int) -> Int {
    // n/2를 더하고 n으로 나눈 나머지를 구함
    return (firstNumber + n/2) % n
}

print(solution(n: 10, firstNumber: 2))  // 결과: 7
/*
원형 배치: 0,1,2,3,4,5,6,7,8,9
2에서 5(n/2)칸 이동 = 7
*/

print(solution(n: 10, firstNumber: 7))  // 결과: 2
/*
7에서 5칸 이동 = 12
12 % 10 = 2
*/

print(solution(n: 4, firstNumber: 1))   // 결과: 3
/*
원형 배치: 0,1,2,3
1에서 2칸 이동 = 3
*/

print(solution(n: 6, firstNumber: 3))   // 결과: 0
/*
원형 배치: 0,1,2,3,4,5
3에서 3칸 이동 = 6
6 % 6 = 0
*/
