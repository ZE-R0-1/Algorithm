import Foundation

func solution(_ numbers: [Int]) -> Double {
    let sum = numbers.reduce(0, +)
    
    let average = Double(sum) / Double(numbers.count)
    
    return average
}
