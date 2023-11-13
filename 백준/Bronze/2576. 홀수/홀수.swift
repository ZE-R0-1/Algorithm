import Foundation

var oddNumbers = [Int]()

for _ in 0..<7 {
    if let input = readLine(), let number = Int(input) {
        if number % 2 == 1 {
            oddNumbers.append(number)
        }
    }
}

if oddNumbers.isEmpty {
    print("-1")
} else {
    let sum = oddNumbers.reduce(0, +)
    let minOdd = oddNumbers.min()!
    
    print(sum)
    print(minOdd)
}