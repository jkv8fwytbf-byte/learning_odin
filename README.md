# learning_odin

we use structs to store data and procidiures to processs the data

## Pointers (`^`)

See [pointer.odin](pointer.odin).

Compare the position of the `^` in these two lines:

```odin
increment_number :: proc(num: ^int) {
```

and

```odin
num^ = num^ + 1
```

In the first case it is to the left of the type name. This is how you denote a pointer type.

In the second case it is to the right of a pointer variable's name. This is how you read or write through a pointer.

Whenever the `^` appears on the right side, we call it the dereference operator. A pointer is essentially a reference to something, meaning that it contains information about where to find something. So to dereference it means to fetch the thing it references.

Note how I use the word *through* in "read or write through a pointer". This is a good way to talk about pointers: You are trying to read or write something, but you must use the address inside the pointer to get there, which is like "going through the pointer".
