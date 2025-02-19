//
//  main.swift
//  CodeSignal
//
//  Created by USER on 2/19/25.
//

import Foundation

func solution(deposit: Int, rate: Int, threshold: Int) -> Int {
    var years = 0
    var balance = Double(deposit)
    let interestRate = 1.0 + Double(rate) / 100.0
    
    // 잔액이 목표 금액에 도달할 때까지 반복
    while balance < Double(threshold) {
        balance *= interestRate
        years += 1
    }
    
    return years
}

print(solution(deposit: 100, rate: 20, threshold: 170))  // 결과: 3
print(solution(deposit: 100, rate: 1, threshold: 101))   // 결과: 1
print(solution(deposit: 1, rate: 100, threshold: 64))    // 결과: 6
print(solution(deposit: 50, rate: 25, threshold: 100))   // 결과: 4
