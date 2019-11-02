/// @description  game_input_event_map_negative_axis(channel, event, axis)
/// @param channel
/// @param  event
/// @param  axis
/**
 * @description Binds the given gamepad axis to the given event so that it registers to the given channel whenever it is negative
 * @argument {real} channel input channel
 * @argument {string} event event name
 * @argument {real} axis gamepad axis (see GameMaker documentation for more info)
 */

var channel = argument0;
var event = argument1;
var axis = argument2;

var exists = false;

with (Gamepad) {
    if (self.channel == channel) {
        exists = true;
        if (event == "") {
            ds_map_delete(axes_negative, axis);
        } else {
            ds_map_replace(axes_negative, axis, event);
        }
    }
}

if (not exists and event != "") {
    with (instance_create(0, 0, Gamepad)) {
        self.channel = channel;
        ds_map_replace(axes_negative, axis, event);
    }
}
