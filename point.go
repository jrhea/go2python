package main

import "C"
import "fmt"
import "reflect"
import "unsafe"


type Point struct { 
    x float32
    y float32
    z float32
}


//export createPoint
func createPoint(x float32, y float32, z float32) uintptr{
    var point = &Point{x,y,z}
    var ptr uintptr = reflect.ValueOf(point).Pointer()
    return ptr;
}

//export scalePoint
func scalePoint(aPoint uintptr, factor float32){
    var point = (*Point)(unsafe.Pointer(aPoint))
    point.x = point.x * factor
    point.y = point.y * factor
    point.z = point.z * factor
    fmt.Printf("Print from inside Go: %+v\n",point)
}

func main() {}

