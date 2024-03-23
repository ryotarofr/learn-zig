const std = @import("std");

pub fn main() void {
    great("World");
}

pub fn great(name: []const u8) void {
    std.debug.print("Hello, {s}!\n", .{name});
}
