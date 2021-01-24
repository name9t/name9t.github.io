#!/usr/bin/swift

func greet(_ person:String, on day:String) -> String {
    return "Hello \(person), today is \(day)."
}
print(greet("Juan", on: "Thursday"))

func calculateStats(scores: [Int]) -> (min: Int, max: Int, sum:Int) {
    var min = scores[0] //5
    var max = scores[0] //5
    var sum = 0
    
    for score in scores {
        if score > max {
            max = score
        } 
        else if score < min {
            min = score
        }
        sum += score
    }
    return (min,max,sum)
}

let statistics = calculateStats(scores: [5,3,100,3,9])
print(statistics.sum)
print(statistics.1)

func makeIncrementor() -> ((Int) -> Int) {
    func addOne(number:Int) -> Int {
        return 1 + number
    }
    return addOne
}
var increment = makeIncrementor()
print(increment(7))

func hasAnyMatches(list: [Int], condition:(Int)->Bool)->Bool {
    for item in list {
        if condition(item) {
            return true
        }
    }
    return false
}
func lesssThanTen(number: Int)->Bool{
    return number < 10
}
var numbers = [20, 19, 7, 12]
hasAnyMatches(list: numbers, condition: lesssThanTen)

numbers.map({ (number: Int) -> Int in
    let result = 3 * number
    return result
})

let mappedNumbers = numbers.map({ number in 
    3 * number })
print(mappedNumbers)
print(numbers)

let sortedNumbers = numbers.sorted() { $0 > 
    $1 }
print(sortedNumbers)
// Prints sortedNumbers from least to greatest