let numbers = [1, 2, 4, 6, 8 , 9, 11, 13, 16, 20]

// This algorithms is not very good. In the worst case, it would have to run n times.
func linearSearchForValue(_ value: Int, array: [Int]) -> Bool {
    
    for num in array {
        if num == value {
            return true
        }
    }
    return false
}

linearSearchForValue(2, array: numbers)

//If the array is sorted, then we can use binary search. 


func binarySearchForValue(_ value: Int, array: [Int]) ->  Bool {
    
    var leftIndex = 0
    var rightIndex = array.count - 1
    
    while leftIndex <= rightIndex {
        let middleIndex = (leftIndex + rightIndex) / 2
        let middleValue = array[middleIndex]
        
        if middleValue == value {
            return true
        }
        
        if value < middleValue {
           rightIndex = middleIndex - 1
        }
        
        if value > middleIndex {
            leftIndex = middleIndex + 1
        }
        
    }
    
    return false

}

binarySearchForValue(4, array: numbers)
binarySearchForValue(23, array: numbers)


var oneThousandNumbers = [Int]()

for i in 1...1000 {
    oneThousandNumbers.append(i)
}

binarySearchForValue(332, array: oneThousandNumbers)