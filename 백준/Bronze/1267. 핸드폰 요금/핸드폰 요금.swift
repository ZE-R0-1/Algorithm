if let input = readLine(),
   let N = Int(input),
   let call = readLine()?.split(separator: " ").compactMap({ Int($0) }) {

    var y = 0 // 영식 요금제
    var m = 0 // 민식 요금제

    for i in call {
        y += (i / 30 + 1) * 10
        m += (i / 60 + 1) * 15
    }

    // 출력
    if y > m {
        print("M", m)
    } else if y == m {
        print("Y M", m)
    } else {
        print("Y", y)
    }
}
