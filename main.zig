// 全ての関数の引数は不変
// 関数はキャメルケース

const std = @import("std");

pub fn main() void {
    const x = 2;
    switch (x) {
        1 => std.debug.print("x is 1\n", .{}),
        2 => std.debug.print("x is 2\n", .{}),
        3 => std.debug.print("x is 3\n", .{}),
        else => std.debug.print("x is not 1, 2, or 3\n", .{}),
    }
    switch (x) {
        1...3 => std.debug.print("x is 1 ~ 3\n", .{}),
        else => std.debug.print("x is not 1, 2, or 3\n", .{}),
    }
    switch (x) {
        1, 2 => std.debug.print("x is 1 or 2\n", .{}),
        else => std.debug.print("x is not 1, 2, or 3\n", .{}),
    }
}
