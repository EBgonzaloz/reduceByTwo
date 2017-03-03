//: Playground - noun: a place where people can play


var numbersArray = [Int]()
for i in 1...100 {
    numbersArray.append(i)
}

func reduceBytwo(numbersArray: [Int]) {
    var resultArray = numbersArray
    resultArray = stride(from: 2, to: numbersArray.count, by: 2).map { numbersArray[$0] }
    
    if numbersArray[numbersArray.count-1] != resultArray[resultArray.count-1] {
        resultArray.insert(numbersArray[0], at: 0)
    }
    
    resultArray.count == 1 ? print(resultArray) : reduceBytwo(numbersArray: resultArray)
}

reduceBytwo(numbersArray: numbersArray)
