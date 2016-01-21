 //movement code
    if keyboard_check(ord('W')) {
    Up = true
    if place_meeting(x,y-Walk,oSolid) {} else { vspeed = -Walk }
    } else { Up = false }
    if keyboard_check(ord('S')) {
    Down = true
    if place_meeting(x,y+Walk,oSolid) {} else { vspeed = Walk }
    } else { Down = false }
    
    if keyboard_check(ord('D')) {
    Right = true
    if place_meeting(x+Walk,y,oSolid) {} else { hspeed = Walk }
    } else { Right = false }
    
    if keyboard_check(ord('A')) {
    Left = true
    if place_meeting(x-Walk,y,oSolid) {} else { hspeed = -Walk }
    } else { Left = false }
