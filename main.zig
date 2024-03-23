/// スライス
const std = @import("std");
pub fn main() void {
    const array = [_]u8{ 1, 2, 3, 4, 5 };
    const slice = array[0..3];
    const slice2 = array[0..];
    std.debug.print("total(slice) = {}\n", .{total(slice)});
    std.debug.print("total(slice2) = {}\n", .{total(slice2)});
    try sliceTest();
}

fn total(values: []const u8) usize {
    var sum: usize = 0;
    for (values) |v| sum += v;
    return sum;
}

pub fn sliceTest() !void {
    const array = [_]u8{ 1, 2, 3, 4, 5 };
    const slice = array[0..3];
    if (@TypeOf(slice) != *const [3]u8) {
        return error.TypeMismatch;
    }
    std.debug.print("Type matches\n", .{});
}
