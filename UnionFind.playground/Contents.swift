// Implementation of Union-Find 

//Our Union-Find data structure is actually a forest 

public struct UnionFind<T: Hashable> {
    
    private var index = [T: Int]()
    private var parent = [Int]()
    private var size = [Int]()
    
    
    public mutating func addSetWith(_ element: T) {
        index[element] = parent.count
        parent.append(parent.count)
        size.append(1)
    }
}
