use std::{ffi::{CStr}};

#[no_mangle]
pub extern "C" fn greet(cstr: *const i8) {
    let c_str = unsafe { CStr::from_ptr(cstr) };
    let str = c_str.to_str().unwrap();
    println!("Greetings, {}!", str);
}

#[no_mangle]
pub extern "C" fn sum(num1: i32, num2: i32) -> i32 {
    num1 + num2
}
