extends AudioStreamPlayer
func _ready():
	self.volume_db=-100
	$twn.interpolate_property(self,'volume_db',self.volume_db,0,1.0,Tween.TRANS_QUINT,Tween.EASE_OUT)
	$twn.start()
