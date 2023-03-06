use std::ffi::c_int;

extern {
    fn double_input(input: c_int) -> c_int;
}

fn main() {
    let input = 4;
    let output = unsafe { double_input(input) };
    println!("{} * 2 = {}", input, output);
}
