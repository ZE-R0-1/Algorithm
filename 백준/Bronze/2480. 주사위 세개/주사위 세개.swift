import Foundation

let dices = readLine()!.split(separator: " ").map { Int($0)! }

if dices[0] == dices[1] && dices[1] == dices[2] {
    print(10000 + dices[0] * 1000)
} else if dices[0] == dices[1] || dices[0] == dices[2] {
    print(1000 + dices[0] * 100)
} else if dices[1] == dices[2] {
    print(1000 + dices[1] * 100)
} else {
    print(dices.max()! * 100)
}