// NOT AND OR 

let life = false

if !life {
    print("Life is good")
}

let loggedIn = true
let hasCreditCard = false
let accountCreated = false

if (loggedIn || hasCreditCard) && accountCreated {
    print ("Buy Now!")
}else{
    print("Please complete profile")
}
