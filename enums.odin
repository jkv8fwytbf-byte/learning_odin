package hellope

import "core:fmt"

main :: proc(){
    ct := ComputerType.Tablet
    fmt.println(ct)
}


ComputerType :: enum {
    Desktop,
    Laptop,
    Tablet,
    Smartphone,
}