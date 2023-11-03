let inputArr1 = readLine()!.split(separator: " ").map{ Int($0)! }
let inputArr2 = readLine()!.split(separator: " ").map{ Int($0)! }

for num in inputArr2 {
    if num < inputArr1[1] {
        print("\(num) ", terminator: "")
    }
}