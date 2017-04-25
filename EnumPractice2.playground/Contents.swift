// Enum practice
// Good review at https://www.makeschool.com/online-courses/tutorials/learn-swift-by-example-part-2-enums

//Raw value is automatically set ONLY FOR Integers

enum RacerMedal: Int {
    case Gold
    case Silver
    case Bronze
}

print(RacerMedal.Gold.rawValue)
print(RacerMedal.Silver.rawValue)
print(RacerMedal.Bronze.rawValue)

//Raw values.  If not Integer, must set EACH
enum CabinClass: String {
    case First = "This is nice"
    case Business = "90% of the fun, half the price!"
    case Coach = "Getting there inexpensively is all that matters."
}

print(CabinClass.First.rawValue)





// === Bank Example using Enums and Structs

enum SufficientFundsStatement {
    case Success (Int)
    case Error (String)
}

struct Bank {
    var cashBalance: Int = 100
    mutating func withdrawalCash (_ amount: Int) -> SufficientFundsStatement {
            if amount > cashBalance {
                return .Error("Sorry, you do not have sufficient funds for that transaction")
            } else {
                cashBalance -= amount
                return .Success(cashBalance)
            }
    }
}

var dougsBank = Bank()
print ("Starting Balance $\(dougsBank.cashBalance)")

let result = dougsBank.withdrawalCash(45)

//can assign variables newBalance & message to the enums current value via the (varName) syntax

switch result {
case let .Success(newBal):
    print(newBal)
case let .Error(message):
    print(message)
}

// Simple rolling a dice example. If roll 6, must roll again
