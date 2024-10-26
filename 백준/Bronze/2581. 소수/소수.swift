import Foundation

// 소수 판별 함수
func isPrime(_ num: Int) -> Bool {
    if num <= 1 {
        return false
    }
    
    if num == 2 {
        return true
    }
    
    if num % 2 == 0 {
        return false
    }
    
    for i in stride(from: 3, through: Int(sqrt(Double(num))), by: 2) {
        if num % i == 0 {
            return false
        }
    }
    
    return true
}

// 입력 처리
let M = Int(readLine()!)!
let N = Int(readLine()!)!

// 소수들을 저장할 배열
var primes: [Int] = []

// M이상 N이하의 자연수 중 소수 찾기
for num in M...N {
    if isPrime(num) {
        primes.append(num)
    }
}

// 결과 출력
if primes.isEmpty {
    print(-1)
} else {
    print(primes.reduce(0, +))  // 소수들의 합
    print(primes[0])          // 최솟값 (배열이 이미 정렬되어 있음)
}