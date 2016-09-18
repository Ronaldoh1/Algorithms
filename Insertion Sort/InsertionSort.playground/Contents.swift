//Simple implementation of the insertion sort algorithm.


func insertionSort(_ array: [Int]) -> [Int] {
    var a = array   //1.
    
    for x in 1..<a.count {  // 2. for loop to check each item
        var y = x
        while y > 0 && a[y] < a[y - 1] { //inner loop to check and swap if needed.
            
            swap(&a[y-1], &a[y])
            y -= 1
        }
    }
    return a
}

let list = [ 10, -1, 3, 9, 2, 27, 8, 5, 1, 3, 0, 26 ]
insertionSort(list)


func improvedInsertionSort(_ array: [Int]) -> [Int] {
    var a = array
    
    for x in 1..<a.count {
        var y = x
        let temp = a[y]
        
        while y > 0 && temp < a[y-1] {
            a[y] = a[y-1]
            y -= 1
        }
        a[y] = temp
    }
    return a
}

improvedInsertionSort(list)


