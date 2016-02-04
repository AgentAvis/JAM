/*

/// collision_line_ext(x1, y1, x2, y2, layer1, layer2);

// SAME LAYER //
if (argument4 == argument5) {
    if (argument4 == 1)
        return collision_line(argument0, argument1, argument2, argument3, oSolid, false, false);
    else 
        return collision_line(argument0, argument1, argument2, argument3, oSolid, false, false); 
        //oSolid 2 ^^  

//DIFFERENT LAYER //
} else {
    var stairs = collision_line(argument0, argument1, argument2, argument3, oStairs, true, false);
    
    if (stairs != noone) {
        if (argument4 == 2) {
            return (argument3 <= stairs.bbox_bottom) || collision_line(argument0, argument1, argument2, argument3, oParSolid2, false, false);
        } else {
            return (argument1 <= stairs.bbox_bottom) || collision_line(argument0, argument1, argument2, argument3, oParSolid2, false, false);
        }
    } else {
        return true;
    }
} 
