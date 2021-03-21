extends Particles2D

func _ready():
	self.emitting=false
	global.connect("ActiveSakuraRain",self,'activate')
func activate():
	self.emitting=true
