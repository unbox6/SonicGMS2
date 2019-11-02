/// @description  game_save_complete([index])
/// @param [index]
/**
 * @description Marks the current save 'slot' as a 'completed' save
 * @argument {real} index (Optional) save 'slot' to update
 */

var index = -1;
switch (argument_count) {
case 1: index = argument[0];
}

var file = game_save_find(index);
with (file) {
    complete = true;
}
