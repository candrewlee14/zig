export fn entry() void {
    var x: i32 = 1234;
    while (!@cmpxchgWeak(i32, &x, 1234, 5678, @as(u32, 1234), @as(u32, 1234))) {}
}

// wrong types given to atomic order args in cmpxchg
//
// tmp.zig:3:47: error: expected type 'std.builtin.AtomicOrder', found 'u32'
