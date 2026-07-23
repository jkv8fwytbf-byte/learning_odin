package hellope

import "core:fmt"

// ^int means "pointer to int" — the caret sits BEFORE the type.
// The procedure receives a memory address, not a copy of the integer,
// so it can change the caller's original value.
increment_number :: proc(num: ^int) {
	// num^ means "dereference" — the caret sits AFTER the variable name.
	// Go to the address in num, read the int, add 1, write it back.
	// Same as: num^ = num^ + 1
	num^ += 1
}

main :: proc() {
	// An ordinary integer living somewhere in memory.
	number := 7

	// & gets the address of number and stores it in number_pointer.
	number_pointer := &number

	// Pass that address into the procedure. Inside, num^ reaches back
	// to this same memory location and modifies number in place.
	increment_number(number_pointer)

	fmt.println(number) // Output: 8
}
