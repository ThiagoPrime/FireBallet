killcount = 0

player = instance_create_layer(640,640,"Actors",obj_DescentPlayer)
with(player){
	input = 0
}

camera = instance_create_layer(0,0,"Controllers",obj_Camera)
with(camera){
	follow = other.player
	camera_set_view_pos(cam, follow.x - viewHalfWid, follow.y - viewHalfHei)
}

instance_create_layer(640,640,"Controllers",obj_RoyaleRing)

interval = 5*room_speed //3 seconds to start
lerpFactor = 0.05
minInt = 1*room_speed

alarm_set(0, interval)