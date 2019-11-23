/// @description  game_menu_find_page(menu, name)
/// @param menu
/// @param  name
/**
 * @description Returns the page with the given name on the given menu, if it exists
 * @argument {real} menu instance index of GameMenu
 * @argument {string} name name of page to locate
 * @returns {real} instance index of GameMenuPage (or undefined if not found)
 */

var menu = argument0;
var name = argument1;

with (menu) {
    var total = ds_list_size(pages);
    for (var index = 0; index < total; ++index) {
        if (pages[| index].name == name) {
            return pages[| index];
        }
    }
}

return undefined;