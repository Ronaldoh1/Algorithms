//Fibonacci sequence 0, 1, 1, 2, 3, 5, 8 

func fibonacciSequenceForNumberOfSteps(_ steps: Int) -> [Int] {
    var sequence = [0, 1]
    
    if steps <= 2 {
        return sequence
    }
    
    for index in 1...steps - 1 {

       let nextNumber = sequence[index - 1] + sequence [index]
        sequence.append(nextNumber)
    }
    
    return sequence
}

print(fibonacciSequenceForNumberOfSteps(6))


// Fibonacci Sequence Recursively


func recursiveFibSequence(_ numberOfSteps: Int, first: Int, second: Int) -> [Int] {
    
    if numberOfSteps == 0 {
        return []
    }
    let array = [first + second]
    
    return array + recursiveFibSequence(numberOfSteps - 1, first: second, second: first + second)
}

print([0, 1] + recursiveFibSequence(9, first: 0, second: 1))