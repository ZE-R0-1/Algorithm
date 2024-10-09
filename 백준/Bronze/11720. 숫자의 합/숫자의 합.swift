import Foundation

let _ = readLine()  // N 값은 실제로 사용하지 않으므로 무시합니다.
let numbers = readLine()!

let sum = numbers.reduce(0) { $0 + Int(String($1))! }
print(sum)