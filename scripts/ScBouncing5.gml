if place_meeting(x+hspeed, y+vspeed, oWall) {
    move_bounce_all(true)
    speed = speed * .75
    Bounced = true
}
       Deceleration = .01

if Bounced = true {
instance_destroy()
speed -= Deceleration
}
if speed < 1 {instance_destroy()}
