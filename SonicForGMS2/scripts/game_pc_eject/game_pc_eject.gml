/// @description  game_pc_eject(character, len, dir)
/// @param character
/// @param  len
/// @param  dir

var character = argument0;
var len = argument1;
var dir = argument2;

with (character) {
    var sine = dsin(dir);
    var cosine = dcos(dir);
    game_pc_position(self, x - (sine * len), y - (cosine * len));
}
