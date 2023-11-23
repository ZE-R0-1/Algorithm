let input = Int(readLine()!)!

for i in 1...input{
    var star = ""
    for j in 1...i{
        star = star + "*"
    }
    print(star)
}