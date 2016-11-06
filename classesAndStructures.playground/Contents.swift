/*Classes and Structures
    - like JS Objects
    - naming: Use capital names (MyClass, MyStructure)
    - instances and inheritance with both
*/

struct Resolution {
    var height = 100
    var width = 200
}

class Video {
    var res = Resolution()
    var color = false
    var frameRate = 30
    var title: String?      //? - tells Swift title is optional
}

let lowRes = Resolution()
let earthVideo = Video()

//simply access methods and variables w/dot notation
print(lowRes.height)
print(earthVideo.res.height)