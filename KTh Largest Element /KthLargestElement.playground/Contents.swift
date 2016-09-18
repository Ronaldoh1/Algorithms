//: This is an implementation for Kth item in an array. 
//param array and kth element

func kthLargest(a: [Int], k: Int) -> Int? {
    let length = a.count
    
    if k > 0 && k <= length {
        let sortedArray = a.sorted()
        return sortedArray[length - k]
    } else {
        return nil
    }
}

//The k-th largest() funciton takes two parameters: the array a, consiting of integers and k. It returns the k-th largest element. 

//Initially there is no direct way to find the k-th element, but after sorting the array is very straight forward. Once we sort the array all we have to do is to return the value at index. (a.count - k). 

// amore faster implementation is using BinarySearch and QuickSort (modified)

public func randomizedSelect<T: Comparable>(array: [T], order k: Int) -> T {
    var a = array
    
    func randomPivot<T: Comparable>(_ a: [T], _ low: Int, _ high: Int) -> T {
        var pivotIndex = randomPivot(a, low, high)
        swap(pivotIndex, high)
        return a[high]
    }
    
    func randomizedPartition<T: Comparable>(_ a: [T], _ low: Int, _ high: Int) -> Int {
        let pivot = randomPivot(&a, low, high)
        var i = low
        for j in low..<high {
            if a[j] <= pivot {
                swap(&a, i, j)
                i += 1
            }
        }
        swap(&a, i, high)
        return i
    }
    
    func randomizedSelect<T: Comparable>(_ a: [T], _ low: Int, _ high: Int, _ k: Int) -> T {
        if low < high {
            let p = randomizedPartition(&a, low, high)
            if k == p {
                return a[p]
            } else if k < p {
                return randomizedSelect(&a, low, p - 1, k)
            } else {
                return randomizedSelect(&a, p + 1, high, k)
            }
        } else {
            return a[low]
        }
    }
    
    precondition(a.count > 0)
    return randomizedSelect(&a, 0, a.count - 1, k)
}