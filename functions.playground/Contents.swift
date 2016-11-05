//simple function w/return
func hello(name:String) -> String {
    let greeting = "Hello " + name + ". Welcome to the Show!"
    return greeting
}
print(hello(name: "Doug"))

//simple function w/o return
func hi(name:String) {
    print("Hi \(name) How goes the Executive search?")
}

print(hello(name: "Doug"))
hi(name: "Linda")

//more complex function (find min & max in an array)
func minMax(arr:[Int]) -> (min: Int, max: Int)? {
    if arr.isEmpty {return nil}
    var arrMin = arr[0]
    var arrMax = arr[0]
    for element in arr {
        if element < arrMin {arrMin = element}
        if element > arrMax {arrMax = element}
    }
    return (arrMin, arrMax)
}

if let bounds = minMax(arr: [-1,0,2,3]){
    print("Min is \(bounds.min) & Max is \(bounds.max)")
}

print(minMax(arr: [-1,2,3]))


