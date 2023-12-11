var counts = Array(repeating: 0, count: 10)

if let A = readLine(), let B = readLine(), let C = readLine() {
    let result = Int(A)! * Int(B)! * Int(C)!
    
    for char in String(result) {
        if let digit = Int(String(char)) {
            counts[digit] += 1
        }
    }
    
    for count in counts {
        print(count)
    }
}
