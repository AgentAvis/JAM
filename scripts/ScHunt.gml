///ScHunt(Object,distance)

var Tar = argument0;

mdist = argument1 + 200;
Target=noone
with (Tar) with (other) if (ScCanSee(other.id)) {
    d=distance_to_object(other)
    if (d<mdist) {mdist=d Target=other.id}
}

