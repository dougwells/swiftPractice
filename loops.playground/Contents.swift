var names = ["Doug", "Kevin", "Eric", "Jay", "Erik"]

//For loops
for name in names {
    print (name)
}
for _ in 1...5 {
    print("Needed to print this 5 times")
}

//While loop (does not run at all if condition false)
var score = 8
while score>10 {
    print(score)
    score += 1
}

//While-repeat Loop (identical to do-while loop)
//First part of loop runs even if while loop condition is false
var myScore = 8
repeat {
    myScore += 1
    print(myScore)
} while myScore>20
