// run : zig test test_pass.zig

/// usizeとisizeは、Zig言語の組み込み型で、それぞれ符号なし整数（unsigned integer）と符号付き整数（signed integer）を表します。
/// usizeは符号なし整数を表し、その範囲は0から最大値までです。
/// 最大値はプラットフォームによりますが、32ビットシステムでは2^32 - 1、64ビットシステムでは2^64 - 1となります。
/// isizeは符号付き整数を表し、その範囲は最小値から最大値までです。
/// 最小値と最大値はプラットフォームによりますが、32ビットシステムでは-2^31から2^31 - 1、64ビットシステムでは-2^63から2^63 - 1となります。
/// これらの型は、特に配列のインデックスやオブジェクトのサイズを表すときによく使用されます。
/// また、usizeとisizeのサイズは、実行しているシステムのアーキテクチャ（32ビットまたは64ビット）に依存します。
const expect = @import("std").testing.expect;

test "usize" {
    try expect(@sizeOf(usize) == @sizeOf(*u8));
    try expect(@sizeOf(isize) == @sizeOf(*u8));
}
