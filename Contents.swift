//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport


// Present the view controller in the Live View window

protocol Polygon{
    var name: String {get}
    var sides: Int {get}
    func perimeter() -> Float
    func area() -> Float
}

struct Triangle: Polygon {
    let name = "Triangle"
    let sides = 3
    var a: Float
    var b: Float
    var c: Float
    
    init(a: Float, b: Float, c: Float){
        self.a = a
        self.b = b
        self.c = c
    }
    
    func perimeter() -> Float {
        let p = (a + b + c)
        return p
    }
    func area() -> Float {
        let ar = (0.5*a*b)
        return ar
    }
}

struct Square: Polygon {
    let name = "Square"
    let sides = 4
    var a: Float
    
    init(a: Float){
        self.a = a
    }
    
    func perimeter() -> Float {
        let p = (a * 4)
        return p
    }
    func area() -> Float {
        let ar = (a * a)
        return ar
    }
}

struct Rectangle: Polygon {
    let name = "Rectangle"
    let sides = 4
    var a: Float
    var b: Float
    
    init(a: Float, b: Float){
        self.a = a
        self.b = b
    }
    
    func perimeter() -> Float {
        let p = (a + a + b + b)
        return p
    }
    func area() -> Float {
        let ar = (a * b)
        return ar
    }
}
func makePolygons() -> [Polygon] {
    let triangle1 = Triangle(a:3,b:4,c:5)
    let triangle2 = Triangle(a: 6, b: 8, c: 10)
    let square1 = Square(a: 15)
    let square2 = Square(a: 25)
    let rectangle1 = Rectangle(a: 20, b: 13)
    let rectangle2 = Rectangle(a: 17, b: 50)
 
    return [triangle1,triangle2,square1,square2,rectangle1,rectangle2]
    //return [triangle1]
}

let polygonArray = makePolygons()
// This is giving an error, saying that makePolygons() isn't returning a Polygon. Gonna ask someone for help, cuz I don't get why it isn't working. I looked at others' stuff on github, and I don't see differences.
func draw() -> [Polygon] {
    for shape in polygonArray {
        print ("\(shape.name) has \(shape.name) sides.Perimeter is \(shape.perimeter()). Area is \(shape.area()).")
    }
}
draw()
