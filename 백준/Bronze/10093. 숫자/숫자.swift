if let input = readLine() {
    let numbers = input.split(separator: " ").compactMap { Int($0) }
    
    guard numbers.count == 2 else {
        fatalError("Exactly two integers are required.")
    }
    
    let A = numbers[0]
    let B = numbers[1]
    
    let count = max(0, abs(B - A) - 1)
    print(count)
    
    if A < B {
        for i in (A + 1)..<B {
            print(i, terminator: " ")
        }
    } else if A > B {
        for i in (B + 1)..<A {
            print(i, terminator: " ")
        }
    }
}