extends AudioStreamPlayer

func _ready():
	randomize()
	self.pitch_scale=rand_range(0.9,1.1)
	self.connect("finished",self,'queue_free')
