pressed = false
if place_meeting(x,y,oMouse) {
image_xscale = .9    
image_yscale = .9        
if mouse_check_button( mb_any ) { pressed = true }

} else {
image_xscale = 1   
image_yscale = 1
}
