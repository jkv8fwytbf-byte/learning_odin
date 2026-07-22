package hellope

import "core:fmt"

ef :: proc(number: int) -> string {
    if number > 0 {
        return "Number is positive"
    } else {
        return "Number is negative"
    }
}

main :: proc(){
    number := 10
    result := ef(number)
    fmt.println(result)
}

