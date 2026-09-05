const std = @import("std");
const crown = @import("crownlet");

fn init() !void {}

fn update(delta_time: f32) !void {
    _ = delta_time;
}

fn draw() !void {
    try crown.graphics.clear(crown.graphics.Color.black);
    try crown.graphics.present();
}

fn shutdown() !void {}

pub fn main() !void {
    try crown.run(.{
        .init = &init,
        .update = &update,
        .draw = &draw,
        .shutdown = &shutdown,
    });
}
