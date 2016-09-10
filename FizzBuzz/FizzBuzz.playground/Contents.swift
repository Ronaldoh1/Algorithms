


let numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]
var oneThousandNumbers = [Int]()

for i in 1...100 {
    oneThousandNumbers.append(i)
}
for num in oneThousandNumbers {
    if (num % 15 == 0) {
        print("\(num) fizz buzz")
    } else {
        if num % 3 == 0 {
            print("\(num) fizz")
        } else if num % 5 == 0 {
            print("\(num) buzz")
        } else {
            print(num)
        }
    }
}