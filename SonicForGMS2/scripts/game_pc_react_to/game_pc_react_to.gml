/// @description  game_pc_react_to(character, ind)
/// @param character
/// @param  ind

var character = argument0;
var ind = argument1;

with (character) {
    if (ds_list_find_index(reaction_list, ind) == -1) {
        ds_list_add(reaction_list, ind);
    }
}