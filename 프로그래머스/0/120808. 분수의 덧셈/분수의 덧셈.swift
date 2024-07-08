import Foundation

// 최대공약수(GCD)를 구하는 함수
func gcd(_ a: Int, _ b: Int) -> Int {
    var a = a
    var b = b
    while b != 0 {
        let temp = b
        b = a % b
        a = temp
    }
    return a
}

// 두 분수를 더하고 결과를 기약분수 형태로 반환하는 함수
func solution(_ numer1: Int, _ denom1: Int, _ numer2: Int, _ denom2: Int) -> [Int] {
    // 공통 분모를 구함
    let commonDenom = denom1 * denom2
    // 두 분수를 공통 분모로 변환하여 더함
    let newNumer1 = numer1 * denom2
    let newNumer2 = numer2 * denom1
    let sumNumer = newNumer1 + newNumer2
    
    // 결과 분수를 기약분수로 변환
    let commonDivisor = gcd(sumNumer, commonDenom)
    let resultNumer = sumNumer / commonDivisor
    let resultDenom = commonDenom / commonDivisor
    
    return [resultNumer, resultDenom]
}