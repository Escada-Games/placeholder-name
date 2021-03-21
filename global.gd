extends Node

var player
const RESOLUTION=Vector2(630,500)

signal PlayerMoved
signal PlayerSkipDialogue

signal ShowPlayerShadow
signal AllowPlayerTilt
signal AllowPlayerParticles
signal ChangePlayerColor
signal ActiveSakuraRain

signal ActivatePolish0
signal ActivatePolish1
signal ActivatePolish2
signal ActivatePolish3
signal ActivatePolish4
signal ActivatePolish5
signal ActivatePolish6

const bgNoises=preload("res://scenes/bgNoises.tscn")
const bgMusic=preload("res://scenes/bgMusic.tscn")

var startTime=0

func _ready():
	self.connect("ActivatePolish4",self,'addBgNoises')
	self.connect("ActivatePolish5",self,'addBgMusic')
	startTime=OS.get_unix_time()

func addBgNoises():
	add_child(bgNoises.instance())

func addBgMusic():
	add_child(bgMusic.instance())
