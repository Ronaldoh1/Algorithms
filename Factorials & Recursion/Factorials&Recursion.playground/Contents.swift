//Factorial of value 


func factorialOfValue(_ value: UInt) -> UInt {
    var product: UInt = 1
    
    if value == 0 {
        return 1
    }
    for i in 1...value {
        product = product * i
    }
    return product
}

factorialOfValue(3)
factorialOfValue(0)

func recusiveFactorialOfValue(_ value: UInt) -> UInt {
    
    if value == 0 {
        return 1
    }
    return value * recusiveFactorialOfValue(value - 1)
}

recusiveFactorialOfValue(3)
recusiveFactorialOfValue(0)