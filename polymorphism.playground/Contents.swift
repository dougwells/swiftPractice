class Shape {
    var area: Double?
    func calcArea(dim1: Double, dim2: Double) {

    }
}

class Rectangle: Shape {
    override func calcArea(dim1: Double, dim2: Double) {
        area = dim1 * dim2
    }
}

class Triangle: Shape {
    override func calcArea(dim1: Double, dim2: Double) {
        area = 0.5*(dim1 * dim2)
    }
}

