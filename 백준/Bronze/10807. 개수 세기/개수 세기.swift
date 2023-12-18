let n = Int(readLine()!)!
let array = readLine()!.split(separator: " ").map { Int($0)! }
let v = Int(readLine()!)!
print(array.filter { $0 == v }.count)