extends Node2D

func _ready():
	self.modulate.a=0
	$light2D.color.a=0
	global.connect("ActivatePolish1",self,'fadeIn')
func fadeIn():
	self.visible=true
	$twn.interpolate_property(self,'modulate:a',self.modulate.a,1,0.8,Tween.TRANS_QUINT,Tween.EASE_IN)
	$twn.interpolate_property($light2D,'color:a',0,1,1.2,Tween.TRANS_QUINT,Tween.EASE_IN)
	$twn.start()
