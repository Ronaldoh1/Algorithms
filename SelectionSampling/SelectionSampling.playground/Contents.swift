// Simple implementation of Selection Sampling Algorithms

// Goal: select k items at random from a collection of n items. For example: Let's say that you have a deck of 52 cards and you need to draw 10 cards at random. This algorithms lets you do that. 
import UIKit

func select<T>(_ array:[T], count k: Int) -> [T] {
    var a = array
    
    for i in 0..<k {
        let r = Int(arc4random_uniform(UInt32(Int(k))))
        //if i does not equal the random number, we want to swap the values
        if i != r {
            swap(&a[i], &a[r])
        }
    }
    return Array(a[0..<k])
}

// An alternative Sampling Algorithm => reservoir sampling

func reservoirSample<T>(from a: [T], count k: Int) -> [T] {
    precondition(a.count >= k)
    
    //create an array of generics
    var result = [T]()
    
    return result
    
}