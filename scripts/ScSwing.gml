//create: Swinging = false
//swingspeed = (3)
//angle = image_angle
//range = angle + (range you want (in degrees))

if (mouse_check_button_pressed(mb_left)) and Swinging = false {

angle = image_angle + 10
Swinging = true
range = 90 + 10
image_angle = angle
}

if Swinging = true {

if Num < range { if right = true { image_angle += SwingSpeed } else { image_angle -= SwingSpeed }  Num += SwingSpeed  } else { image_angle = angle Swinging = false Num = 0 }

}
