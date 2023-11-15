var dwarfHeights = [Int]()

// 난쟁이의 키를 입력받음
for _ in 0..<9 {
    if let input = readLine(), let height = Int(input) {
        dwarfHeights.append(height)
    }
}

// 아홉 난쟁이 중 일곱 난쟁이를 찾는 함수
func findSevenDwarfs() -> [Int] {
    for i in 0..<8 {
        for j in (i + 1)..<9 {
            // 아홉 난쟁이의 키 합이 100이면 그 난쟁이들을 반환
            if dwarfHeights.reduce(0, +) - dwarfHeights[i] - dwarfHeights[j] == 100 {
                return dwarfHeights.filter { $0 != dwarfHeights[i] && $0 != dwarfHeights[j] }.sorted()
            }
        }
    }
    return []
}

let result = findSevenDwarfs()

// 결과 출력
for height in result {
    print(height)
}
