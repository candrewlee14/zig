const Small = enum(u2) {
    One,
    Two,
    Three,
    Four,
};

export fn entry() void {
    var x: u2 = Small.Two;
    _ = x;
}

// implicitly casting enum to tag type
//
// tmp.zig:9:22: error: expected type 'u2', found 'Small'
