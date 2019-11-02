/// @description  game_spawn_rings(rings, ox, oy)
/// @param rings
/// @param  ox
/// @param  oy
/**
 * @description Spawns up to 32 dropped rings in circles of 16 at the given coordinates
 * @argument {real} rings number of dropped rings to create
 * @argument {real} ox centre spawn x-position
 * @argument {real} oy centre spawn y-position
 */

var rings = argument0;
var ox = argument1;
var oy = argument2;

var total = min(rings, 32);
var len = 4;
var dir = 101.25;
var flip = false;

for (var ring = 0; ring < total; ++ring) {
    if (ring == 16) {
        len = 2;
        dir = 101.25;
    }
    with (instance_create(ox, oy, LostRing)) {
        depth = other.depth + 1;
        x_speed = lengthdir_x(len, dir);
        y_speed = lengthdir_y(len, dir);
        if (flip) {
            x_speed = -x_speed;
            dir += 22.5;
        }
    }
    flip = !flip;
}
