//Swift implementation of linear search. 


func linearSearch<T: Equatable>(_ a: [T], _ key: T) -> Int? {
    
    for i in 0..<a.count {
        if a[i] == key {
            return i
        }
    }
    return nil
}