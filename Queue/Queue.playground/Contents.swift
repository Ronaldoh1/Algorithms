public struct Queue<T> {
    fileprivate var array = [T]()
    
    public func count() -> Int {
        return array.count
    }
    
    public func isEmpty() -> Bool {
        return array.isEmpty
    }
    
    public mutating func enqueue(_ element: T) {
        array.append(element)
    }
    
    public mutating func dequeue() -> T? {
        if array.isEmpty {
            return nil
        } else {
           return array.removeFirst()
        }
    }
    
    public func peek() -> T? {
        return array.first
    }
    
}