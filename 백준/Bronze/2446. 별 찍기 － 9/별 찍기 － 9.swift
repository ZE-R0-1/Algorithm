if let input = readLine(), let n = Int(input) {
    for i in 0..<n {
        let spaces = String(repeating: " ", count: i)
        let stars = String(repeating: "*", count: 2 * (n - i) - 1)
        print(spaces + stars)
    }
    
    for i in stride(from: n - 2, through: 0, by: -1) {
        let spaces = String(repeating: " ", count: i)
        let stars = String(repeating: "*", count: 2 * (n - i) - 1)
        print(spaces + stars)
    }
}
