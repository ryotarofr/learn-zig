// run : zig test test_pass.zig

const std = @import("std");
const expect = std.testing.expect;

test "always succeeds" {
    try expect(true);
}
