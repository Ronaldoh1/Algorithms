//Implementation for finding the max and min numbers in an array. 


func minimum<T: Comparable>( array:[T]) -> T? {
    var array = array
    guard !array.isEmpty else {
        return nil
    }
    
    var minimum = array.removeFirst()
    
    for element in array {
        minimum = element < minimum ? element : minimum
    }
    return minimum
}

func maximum<T: Comparable>( array:[T]) -> T? {
    
    var array = array
    guard !array.isEmpty else {
        return nil
    }
    var maximum = array.removeFirst()
    
    for element in array {
        maximum = element > maximum ? element : maximum
    }
    
    return maximum
}

let array = [ 8, 3, 9, 4, 6 ]
minimum(array: array)   // This will return 3
maximum(array: array)   // This will return 9