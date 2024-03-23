const std = @import("std");

pub fn main() void {
    const string = [_]u8{ 'a', 'b', 'c' };

    for (string, 0..) |character, index| {
        _ = character;
        _ = index;
    }

    for (string, 0..) |character, index| {
        std.debug.print("Character: {c}, Index: {d}\n", .{ character, index });
    }

    for (string) |character| {
        _ = character;
    }

    for (string, 0..) |_, index| {
        _ = index;
    }

    for (string) |_| {}
}
