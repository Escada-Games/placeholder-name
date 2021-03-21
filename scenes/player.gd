extends KinematicBody2D

var vVelocity=Vector2()
const SPEED=220

enum States {Topdown,Platformer}
var state=States.Topdown

var topDownLerpSpeed=0.1
const TOP_DOWN_LERP_SPEED_MOVING=0.1
const TOP_DOWN_LERP_SPEED_STOPPING=0.15

var allowFootsteps=false
var t=10
const footsteps=[
	preload("res://scenes/footsteps/footstepSfx0.tscn"),
	preload("res://scenes/footsteps/footstepSfx1.tscn"),
	preload("res://scenes/footsteps/footstepSfx2.tscn"),
	preload("res://scenes/footsteps/footstepSfx3.tscn"),
	preload("res://scenes/footsteps/footstepSfx4.tscn"),
]

export(bool) var showShadow=false
export(bool) var canTilt=false
export(bool) var runParticles=false
export(bool) var canEmitDustParticles=false
export(bool) var disabledPolish0=true
func _ready():
	
	if disabledPolish0:
		$polish0.scale=Vector2()
	
	global.player=self
	set_physics_process(true)
	$sprite.modulate=Color('#ffffff')
	$sprite/inside.modulate.a=0
#	if not showShadow:$polish0/shadow.scale=Vector2()
#	$polish0/dustParticles.emitting=false
	
#	global.connect('ShowPlayerShadow',self,'showShadow')
#	global.connect("AllowPlayerTilt",self,'enableTilt')
#	global.connect("AllowPlayerParticles",self,'enableParticles')
#	global.connect("ChangePlayerColor",self,'changeColor')
	global.connect("ActivatePolish0",self,'ActivatePolish0')
	global.connect("ActivatePolish1",self,'ActivatePolish1')
	global.connect("ActivatePolish3",self,'ActivatePolish3')

func ActivatePolish0():
	print_debug('Activating polish 0')
	self.canEmitDustParticles=true
	self.canTilt=true
	$twn.interpolate_property($polish0,'scale',$polish0.scale,Vector2(1,1),0.6,Tween.TRANS_BACK,Tween.EASE_OUT)
	$twn.start()

func ActivatePolish1():
	$twn.interpolate_property($sprite,'modulate',$sprite.modulate,Color('#F56476'),0.5,Tween.TRANS_QUINT,Tween.EASE_IN)
	$twn.interpolate_property($sprite/inside,'modulate:a',$sprite/inside.modulate.a,1,0.88,Tween.TRANS_QUINT,Tween.EASE_IN)
	$twn.start()

func ActivatePolish3():
	allowFootsteps=true

func _physics_process(delta):
#	ProjectSettings.set('rendering/environment/default_clear_color',Color('5E4352'))
	var vInput=Vector2()
	vInput.x=1 if Input.is_action_pressed('ui_right') else -1 if Input.is_action_pressed('ui_left') else 0
	vInput.y=1 if Input.is_action_pressed('ui_down') else -1 if Input.is_action_pressed('ui_up') else 0
	if state==States.Topdown:
		vInput=vInput.normalized()
		topDownLerpSpeed=TOP_DOWN_LERP_SPEED_MOVING if vInput!=Vector2() else TOP_DOWN_LERP_SPEED_STOPPING
		if canTilt:
			$sprite.rotation=lerp($sprite.rotation,-(PI/15) * vInput.x,0.1)
		vVelocity=vVelocity.linear_interpolate(vInput*SPEED,topDownLerpSpeed)
		vVelocity=move_and_slide(self.vVelocity,Vector2(0,0))
		
		
		self.global_position.x=clamp(self.global_position.x,0,get_viewport().size.x)
		self.global_position.y=clamp(self.global_position.y,0,get_viewport().size.y)
		if vInput!=Vector2():
			t+=1
			if t%30==0 and self.allowFootsteps:
				get_parent().add_child(footsteps[randi()%footsteps.size()].instance())
			if canEmitDustParticles:
				$polish0/dustParticles.emitting=true
			global.emit_signal("PlayerMoved")
		else:
			t=30
			$polish0/dustParticles.emitting=false
		if Input.is_action_just_pressed("ui_skip"):
			global.emit_signal('PlayerSkipDialogue')

func showShadow():
	$twn.interpolate_property($shadow,'scale',$shadow.scale,Vector2(1,1),0.4,Tween.TRANS_BACK,Tween.EASE_OUT)
	$twn.start()

func enableTilt():
	canTilt=true
func enableParticles():
	canEmitDustParticles=true
func changeColor():
	$sprite.modulate=Color('E43F6F')
