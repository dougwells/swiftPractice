//Switch Case
let myChar = "z"
switch myChar {
case "a":
    print("The character is 'a'")
case "z":
    print("The character is 'z'")
default:
    print("Charecter is neither 'a' nor 'z'")
}

//Switch Case with ranges
let score = 101
switch score {
case 1..<10:
    print("Score is less than 10. You need practice")
case 10...99:
    print("Score is 10-100. Not bad")
case 100..<1000:
    print("You broke 100.  Awesome!")
default:
    print("Score is unknown.  Please see FAQs")
}

//Switch Case with tuples (multiple variables)
let coord = (3,3)
switch coord {
case (0,0):
    print("You are at major axis intersection")
case (_,2):
    print("Y intersection is 2")
case (1,_):
    print("X intersection is 1")
default:
    print("We can't find you")
}

let soccerScore = (1,2)
switch soccerScore {
case let (teamA, teamB) where teamA==teamB:
    print("Tie Game")
default:
    print("It is not a tie")
}
    