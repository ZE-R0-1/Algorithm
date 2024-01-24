func solution() {
    let count = Int(readLine()!)!
    let a = readLine()!.split(separator: " ").map({Int(String($0))!}).sorted { $0 < $1 }
    let b = readLine()!.split(separator: " ").map({Int(String($0))!})
    let b_srt = b.sorted { $0 > $1 }
    var result: Int = 0
    
    for i in 0..<count {
        result += a[i] * b_srt[i]
    }
    
    print(result)
}
solution()