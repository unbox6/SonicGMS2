/// @description  game_screen_fade_out(shader, steps, [next_room])
/// @param shader
/// @param  steps
/// @param  [next_room]
/**
 * @description Fades out the game screen within the given number of frames using the given shader (also transitions to the given room, if desired)
 * @argument {real} shader screen shader to apply
 * @argument {real} steps total frames to fade
 * @argument {real} next_room (Optional) room index to transition to
 * @returns {real} instance index of FadeOut
 */

var next_room = -1;
switch (argument_count) {
case 3: next_room = argument[2];
default:
    var steps = argument[1];
    var shader = argument[0];
}

var fade = instance_create(0, 0, FadeOut);
fade.image_speed = 3.0 / steps;
fade.shader = shader;
fade.next_room = next_room;

return fade;
