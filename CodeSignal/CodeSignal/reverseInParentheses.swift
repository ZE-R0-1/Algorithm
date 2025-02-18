//
//  main.swift
//  CodeSignal
//
//  Created by USER on 2/18/25.
//

import Foundation

func solution(inputString: String) -> String {
    var str = inputString
    
    while let leftIndex = str.lastIndex(of: "(") {
        print(leftIndex)
        let rightIndex = str[leftIndex...].firstIndex(of: ")")!
        print(rightIndex)
        let reversedSubString = String(str[str.index(after: leftIndex)..<rightIndex].reversed())
        print(reversedSubString)
        let range = leftIndex...rightIndex
        print(str)
        str.replaceSubrange(range, with: reversedSubString)
        print(str)
    }
    return str
}

print(solution(inputString: "foo(bar)baz"))
