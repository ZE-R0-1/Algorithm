//
//  main.swift
//  CodeSignal
//
//  Created by USER on 2/19/25.
//

import Foundation

func solution(cell1: String, cell2: String) -> Bool {
    // 각 셀의 좌표를 숫자로 변환
    let position1 = (
        column: Int(cell1.first!.asciiValue! - 65),  // A=0, B=1, ...
        row: Int(cell1.last!.asciiValue! - 49)       // 1=0, 2=1, ...
    )
    
    let position2 = (
        column: Int(cell2.first!.asciiValue! - 65),
        row: Int(cell2.last!.asciiValue! - 49)
    )
    
    // 각 셀의 색상 계산 (합이 짝수면 한 색, 홀수면 다른 색)
    let color1 = (position1.column + position1.row) % 2
    let color2 = (position2.column + position2.row) % 2
    
    return color1 == color2
}

print(solution(cell1: "A1", cell2: "C3"))  // true
print(solution(cell1: "A1", cell2: "H3"))  // false
print(solution(cell1: "B1", cell2: "C2"))  // true
