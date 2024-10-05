// N(바구니 개수)과 M(공을 넣는 횟수) 입력 받기
let input = readLine()!.split(separator: " ").map { Int($0)! }
let N = input[0]
let M = input[1]

// 바구니 초기화 (1부터 N까지의 바구니, 초기에는 모두 비어있음)
var baskets = Array(repeating: 0, count: N)

// M번 공 넣기
for _ in 0..<M {
    let operation = readLine()!.split(separator: " ").map { Int($0)! }
    let i = operation[0] - 1  // 시작 바구니 (0-based index로 변환)
    let j = operation[1] - 1  // 끝 바구니 (0-based index로 변환)
    let k = operation[2]      // 넣을 공의 번호
    
    // i번째 바구니부터 j번째 바구니까지 k번 공을 넣음
    for basket in i...j {
        baskets[basket] = k
    }
}

// 결과 출력
print(baskets.map { String($0) }.joined(separator: " "))