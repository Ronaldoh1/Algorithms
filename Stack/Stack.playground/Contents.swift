//Implementation of a Stack 


public struct Stack<T> {
    
    fileprivate var array = [T]()
    
    func isEmpty() -> Bool {
        return array.isEmpty
    }
    
    public mutating func insert(_ element: T) {
        array.append(element)
    }
    
    public mutating func pop() {
        array.removeLast()
    }
    
    public func peek() -> T? {
        return array.last
    }
    
    public func count() -> Int {
        return array.count
    }
    
}