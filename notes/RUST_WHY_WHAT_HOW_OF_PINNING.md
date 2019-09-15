# The Why, What, and How of Pinning in Rust
A [live stream recording](https://www.youtube.com/watch?v=DkMwYxfSYNQ) by **Jon Gjengset**.

> With the Future trait stabilized and async/await coming soon, many more people are being exposed to the Pin type and its sibling trait Unpin. In this video, we dive deep into what these types are, why they are needed, how they work, and how to use them. We also dig into the connection to Futures and async/await, and discuss how you safely move from old code that does not use pinning to new code that does.

```rust
async fn foo() {
	// We can use await here thanks to the async code sugar.
}

fn foo() -> impl Future<Output = ()> {
	async move {
		// This is kind of desugarilized version of above.
	}
}
```
