//if place_meeting(x + hspeed,y + vspeed,oSolid) {   
//    speed = speed * .4
//    move_bounce_all(true)
//}

//If we're about to hit a block
if place_meeting(x + hspeed, y + vspeed, oSolid) {

    //Keep as much of our horizontal speed as possible
    OldHSpeed = hspeed
    hspeed = 0
    while
        place_meeting(x + hspeed + sign(OldHSpeed), y, oSolid) = false && //Check there's still room if we crept a bit closer to our old hspeed
        abs(hspeed) < abs(OldHSpeed) //Check we haven't restored all of our old hspeed, and only pay attention to the 'absolute' values, the magnitudes
    {
        //Creep towards old hspeed
        hspeed = hspeed + sign(OldHSpeed)
    }   
    
    //We have now figured out how much of our hspeed we can keep without hitting anything, so we're keeping that.

    //Keep as much of our horizontal speed as possible
    OldVSpeed = vspeed
    vspeed = 0
    while
        place_meeting(x + hspeed, y + vspeed + sign(OldVSpeed), oSolid) = false && //Check there's still room if we crept a bit closer to our old vspeed
        abs(vspeed) < abs(OldVSpeed) //Check we haven't restored all of our old vspeed, and only pay attention to the 'absolute' values, the magnitudes
    {
        //Creep towards old hspeed
        vspeed = vspeed + sign(OldVSpeed)
    }     

}