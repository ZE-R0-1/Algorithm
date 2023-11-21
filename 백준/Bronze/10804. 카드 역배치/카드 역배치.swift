var cards = Array(1...20)

for _ in 1...10 {
    if let input = readLine() {
        let indices = input.split(separator: " ").compactMap { Int($0) }
        let start = indices[0] - 1
        let end = indices[1] - 1
        cards[start...end].reverse()
    }
}

print(cards.map { String($0) }.joined(separator: " "))
