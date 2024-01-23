// n과 k 값을 얻음
let nk = readLine()!.split { $0 == " " }.map { Int(String($0))! }
let n = nk[0], k = nk[1]
// 보석을 저장할 tuple 배열 생성
var jewelries: [(Int, Int)] = []
// 가방 무게를 저장할 배열 생성
var bags: [Int] = []

// 보석 저장
for _ in 0..<n {
    let input = readLine()!.split { $0 == " " }.map { Int(String($0))! }
    jewelries.append((input[0], input[1]))
}

// 가방 저장
for _ in 0..<k {
    bags.append(Int(readLine()!)!)
}

// 보석과 가방을 오름차순으로 정렬함
jewelries.sort { $0.0 < $1.0 }
bags.sort { $0 < $1 }

// queue 생성 -> 가격이 높은 순으로 정렬함
// jewelries.1 이 가격이므로 $0.1 > $1.1 로 정렬
var queue = PQ<(Int, Int)>(sort: {$0.1 > $1.1 })

// 결과 값 생성
var result = 0

// 보석 index 생성
var index = 0

// 가방으로 반복문 시작
for bag in bags {
    // index의 크기가 넘어가지 않고, 보석의 무게를 가방이 수용할 수 있으면
    while index < jewelries.count && jewelries[index].0 <= bag {
        // queue 에 해당 보석에 대한 정보를 집어 넣고
        queue.push(jewelries[index])
        // 다음 보석에 대한 비교 시작
        index += 1
    }

    // 여기까지 왔다는 것은 bag 가 수용할 수 있는 보석을 queue 에 집어 넣었다는 것
    // queue 가 비어있지 않다면
    // 가장 가격이 높은 (queue 의 최상위) 값을 result 에 더해줌
    if !queue.isEmpty() {
        result += queue.pop()!.1
    }
}

// 결과 실행
print(result)

// 우선순위큐 구조체
public struct PQ<T> {
    private var arr: [T] = []
    let order: (T, T) -> Bool

    init(sort: @escaping (T, T) -> Bool) {
        self.order = sort
    }

    func isEmpty() -> Bool {
        return arr.isEmpty
    }

    mutating func push(_ element: T) {
        arr.append(element)
        bottomUp()
    }

    mutating func pop() -> T? {
        if arr.isEmpty {
            return nil
        }
        arr.swapAt(0, arr.count - 1)
        let last = arr.removeLast()

        topDown()

        return last
    }

    mutating func bottomUp() {
        var index = arr.count - 1
        while index > 0 {
            let next = (index - 1) / 2
            if !order(arr[index], arr[next]) {
                break
            }

            arr.swapAt(index, next)
            index = next
        }
    }

    mutating func topDown() {
        if arr.count <= 1 {
            return
        }

        var index = 0

        while 2 * index + 1 < arr.count {
            var next = 2 * index + 1

            if next < arr.count - 1 && order(arr[next + 1], arr[next]) {
                next = next + 1
            }

            if !order(arr[next], arr[index]) {
                break
            }

            arr.swapAt(index, next)
            index = next
        }
    }
}