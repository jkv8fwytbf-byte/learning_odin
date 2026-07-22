package hellope

import "core:fmt"

is_bigger :: proc(a: int, b: int) -> bool {
	return a > b
}

main :: proc() {
	result := is_bigger(10, 20)
	fmt.println(result)
}
