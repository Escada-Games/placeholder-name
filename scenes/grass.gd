extends Sprite
func _ready():
	randomize()
	self.frame=randi()%14
