hue = global.hue
sat = global.sat

hue += random_range(-5,5)
//sat += random_range(-5,5)

image_blend = make_colour_hsv(hue, sat, 255)
