all: target/debug/libdouble_input.a
	swiftc src/main.swift -import-objc-header src/double.h -L./target/debug -ldouble_input -o double
	./double

target/debug/libdouble_input.a: src/lib.rs Cargo.toml
	cargo build

clean:
	rm -rf target double