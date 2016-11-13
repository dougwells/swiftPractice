class Ghost {
    
    var isAlive = true
    var strength = 9
    
    func kill() {
        isAlive = false
        strength = 0
    }
    
    func isStrong() -> Bool {
        if strength > 10 {
            return true
        } else {
            return false
        }
    }
}

var casper = Ghost()
print (casper.isAlive)
casper.strength = 20
print (casper.strength)
print (casper.isStrong())
casper.kill()
print (casper.isAlive)
print (casper.isStrong())



