if let input = readLine(), let n = Int(input) {
    for i in stride(from: n, to: 0, by: -1) {
        let stars = String(repeating: "*", count: i)
        print(stars)
    }
}