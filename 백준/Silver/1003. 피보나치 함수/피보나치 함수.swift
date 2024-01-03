var cache = Array(repeating: (-1, -1), count: 41)

for n in 0...40 {
		// 초기 값
    if n == 0 {
        cache[0] = (1, 0)
    } else if n == 1 {
        cache[1] = (0, 1)
    } else { //👉 점화식
        cache[n] = (cache[n - 2].0 + cache[n - 1].0, cache[n - 2].1 + cache[n - 1].1)
    }
}

let T = Int(readLine()!)!

for _ in 0..<T {
    let N = Int(readLine()!)!
    print(cache[N].0, cache[N].1)
}