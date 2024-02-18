import Foundation

let count = Int(readLine()!)!
var stack: [Character] = []
var result: Int = 0

for _ in 0..<count {
    stack = []
    let input = readLine()!
    
    for s in input {
        if let top = stack.last, top == s {
            stack.removeLast()
        } else {
            stack.append(s)
        }
    }
    
//    print("input: \(input) / stack: \(stack)")
    if stack.isEmpty {
        result += 1
    }
}

print(result)