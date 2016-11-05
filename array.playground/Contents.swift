//syntax for creating an array

var myArr = [Int](arrayLiteral: 1,2,3,4,5)
var planetArr: [String] = ["Mercury", "Venus", "Earth", "Mars", "Uranus"]
var numArr: [Int] = [1,2,3,4,5]

//repeating array
var repeatArr = Array(repeating: 2.2, count: 5)

//Array methods

    //count
    print("There are \(planetArr.count) planets in my array")

    //isEmpty
    numArr.isEmpty

    //removeLast
    numArr.removeLast()
    print(numArr)

//"For In" Loops
for planet in planetArr {
    print(planet)
}

for (index, planet) in planetArr.enumerated() {
    print("Index \(index): \(planet)")
}


