extends Sprite
func _ready():
	self.modulate=Color('#4d4d4d')
	global.connect("ActivatePolish1",self,'turnPink')
func turnPink():
	$twn.interpolate_property(
		self,
		'modulate',
		self.modulate,
		Color('#5E4352'),
		0.66,
		Tween.TRANS_QUINT,
		Tween.EASE_IN
	)
	$twn.start()
