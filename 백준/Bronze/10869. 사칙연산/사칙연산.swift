import Foundation

let Line = readLine()!
let LineArr = Line.components(separatedBy: " ")

let A = Int(LineArr[0])!
let B = Int(LineArr[1])!

print(A+B)
print(A-B)
print(A*B)
print(A/B)
print(A%B)