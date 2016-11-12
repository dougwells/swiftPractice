// Challenge #1
var menu: [String: Double] = [
    "Pizza": 3.99,
    "Ice Cream": 4.99,
    "Salad": 5.99
]

var order = ["Pizza", "Salad"]

print("You ordered \(order[0]) & \(order[1]). The total is $\(menu[order[0]]! + menu[order[1]]!).")
// Challenge #2

var login = ["userName": "Doug", "password": "123"]

var userName = "Doug"
var password = "123"
var user = false
var pw = false

if userName == login["userName"] {user = true}
if password == login["password"] {pw = true}

if user && pw {print("Welcome")}
if user && !pw {print("Retry password")}
if !user && pw {print("Username incorrect")}
if !user && !pw {print("Both username & password incorrect")}