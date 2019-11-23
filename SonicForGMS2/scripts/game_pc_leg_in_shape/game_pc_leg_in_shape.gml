/// @description  game_pc_leg_in_shape(character, shape, xrad, yrad)
/// @param character
/// @param  shape
/// @param  xrad
/// @param  yrad
// ---------------------------------------------------------------
/*  
**  Returns whether the mask of the given instance intersects
**  a section of lower half of the player's virtual mask.
**
**  Arguments:
**      character   Real; character instance index
**      shape       Real; terrain shape instance index
**      xrad        Real; distance in pixels to extend the mask
**                  horizontally
**      yrad        Real; distance in pixels to extend the mask
**                  vertically
**
**  Returns:
**      Real; 0: no intersect; 1: completely inside;
**      2: overlapping
*/
// ---------------------------------------------------------------
var character = argument0;
var shape = argument1;
var xrad = argument2;
var yrad = argument3;
// ---------------------------------------------------------------

var result = 0;

with (character) {
    var sine = dsin(mask_direction);
    var cosine = dcos(mask_direction);
    var x1 = x_int + (cosine * xrad);
    var y1 = y_int - (sine * xrad);
    var x2 = x_int + (cosine * xrad) + (sine * yrad);
    var y2 = y_int - (sine * xrad) + (cosine * yrad);
    result = game_shape_in_line(shape, x1, y1, x2, y2);
}

return result;