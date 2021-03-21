extends Node2D
var wallsGlobalPosition=Vector2()
func _ready():
	wallsGlobalPosition=$walls.global_position
	$walls.global_position=Vector2(1,1)*1000
	$occluders.visible=false
	for t in $props.get_children():
		t.scale=Vector2()
	global.connect("ActivatePolish2",self,'showTrees')
func showTrees():
	$occluders.scale=Vector2()
	$occluders.visible=true
	for t in $props.get_children():
		randomize()
		$twn.interpolate_property(t,'scale',Vector2(),Vector2(3,3),0.66+rand_range(0.1,0.8),Tween.TRANS_BACK,Tween.EASE_OUT,rand_range(0.1,1.5))
	$twn.interpolate_property($occluders,'scale',Vector2(),Vector2(1,1),1.0,Tween.TRANS_QUINT,Tween.EASE_IN_OUT)
	$twn.start()
	$walls.global_position=wallsGlobalPosition
#	yield($twn,"tween_all_completed")

