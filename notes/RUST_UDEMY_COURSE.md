# Rust: Building Reusable Code with Rust from Scratch

Notes for [this Udemy course](https://www.udemy.com/course/rust-building-reusable-code-with-rust-from-scratch) which introduces many interesting topics in Rust.

> A reference to a `Vec<T>` is called a **slice**. Its signature is `&[T]`.

> Useful `Iterator` method is `skip(n: usize)` which skips next N elements. Great to combine with `fold` method.

```rust
vector.skip(1).fold(vector[0], |acc, item| {
	//
})
```

> **Monomorphization** is a concept of generating several versions of the same code for different data types. These are the brick and bones of Rust's *zero-abstraction* philosophy.

> To get a max value of a number type, use `max_value` method as in `u64::max_value()` rather than the module constant `std::u64::MAX`.

## Rayon
Rayon is a Rust crate which provides easy and efficient parallelism.

A [Youtube talk](https://www.youtube.com/watch?v=gof_OEv71Aw) by the author Nicholas Matsakis visualizes the ideas behind this crate. His early development stage [blog post](http://smallcultfollowing.com/babysteps/blog/2015/12/18/rayon-data-parallelism-in-rust/) contains more details about the implementation.

## Tests and documentation

```rust
#[cfg(test)]
mod tests {
	use super::module_name;

	#[test]
	fn some_test() {
		assert_eq!(true, true);
	}

}
```

Comment `//!` is used at crate root and represents the crate documentation. The `///` comment documents an item which follows the comment.

In documentation, we can write tests using triple back tick. To exclude a line from documentation but keep it in the code to make the test pass, use `#`.

```
# use my_module::is_odd;
assert_eq(true, is_odd(3));
```

Open documentation locally with `$ cargo doc --open`.
