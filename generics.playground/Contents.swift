//"Normal" function.  Must specify param types
func swapInt(_ a:inout Int, _ b:inout Int){
    print("before swap", a, b)
    let temp = a
    a = b
    b = temp
    print("after swap:",a,b)
}
var val1 = 3
var val2 = 2
swapInt(&val1,&val2)

//"Generics" allow functions w/params of any type
func swapAnything<T>(_ a:inout T, _ b:inout T){
    print("before swap", a, b)
    let temp = a
    a = b
    b = temp
    print("after swap:",a,b)
}
    //Int
    var int1 = 3
    var int2 = 2
    swapAnything(&int1, &int2)

    //Stings
    var string1 = "Doug"
    var string2 = "Linda"
    swapAnything(&string1, &string2)

    //Double
    var float1 = 3.2
    var float2 = 2.3
    swapAnything(&float1, &float2)
