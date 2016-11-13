
// Set variables
var names = ["Doug", "Kevin", "Eric", "Jay", "Erik"]
var arr = [8, 10, 15, 30, -2]
var doubleArr: [Double] = [8, 10, 15, 30, -2]

// For In
print("For In Loops")
for name in names {
    print(name)
}

for _ in 1...5 {
    print("Needed to print this 5 times")
}

for i in arr {
    print(i+1)
}

for (index, value) in arr.enumerated() {
    arr[index] += 1         //identify element with arr[index]
    arr[index] = value - 1  //can get value directly w/o index
}
print("New array: ", arr)

print("Beginning array", doubleArr)
for (index, value) in doubleArr.enumerated() {
    doubleArr[index] = value/2
}
print("Array divided by 2", doubleArr)

// While loop
// (does not run at all if condition false)
print("While Loops")
var score = 8
while score>10 {
    print(score)
    score += 1
}

var i = 7
var j = 1
while j<=20 {
    print(j*7)
    j += 1
}

i = 0
while i < arr.count {
    print(arr[i]+1)
    i += 1
}

//While-repeat Loop (identical to do-while loop)
//First part of loop runs even if while loop condition is false
print("While-Repeat Loops")
var myScore = 8
repeat {
    myScore += 1
    print(myScore)
} while myScore>20


