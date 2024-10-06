// N(바구니 개수)과 M(공을 바꾸는 횟수) 입력 받기
let input = readLine()!.split(separator: " ").map { Int($0)! }
let N = input[0]
let M = input[1]

// 바구니 초기화 (1부터 N까지의 번호가 적힌 공)
var baskets = Array(1...N)

// M번 공 바꾸기
for _ in 0..<M {
    let swap = readLine()!.split(separator: " ").map { Int($0)! }
    let i = swap[0] - 1  // 첫 번째 바구니 (0-based index로 변환)
    let j = swap[1] - 1  // 두 번째 바구니 (0-based index로 변환)
    
    // i번째 바구니와 j번째 바구니의 공을 교환
    baskets.swapAt(i, j)
}

// 결과 출력
print(baskets.map { String($0) }.joined(separator: " "))