extends Node2D

func _ready():
	self.modulate.a=0
	global.connect("ActivatePolish6",self,'fadeIn')
func fadeIn():
	$twn.interpolate_property(self,'modulate:a',self.modulate.a,1,2.0,Tween.TRANS_QUINT,Tween.EASE_IN_OUT)
	$twn.start()
