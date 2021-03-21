extends RichTextLabel

var canContinue=false
var currentTimer
signal Continue
const sfxOk=preload("res://scenes/sfxOk.tscn")
func _ready():
	self.bbcode_text=''
	$timer.connect("timeout",self,'ContinueDialogue')
	$twn.connect("tween_all_completed",self,'EnableNext')
	
#	yield(get_tree().create_timer(2.0),"timeout")
	newText('...hey. Press C to continue this text.',0.66)
	yield(self,'Continue')
	
	newText('You can move using the arrow keys. The WASD keys might work as well, if I didn\'t forget to include them.',2)
	yield(global,"PlayerMoved")
	yield(self,'Continue')

	newText('Nice job moving. Not being sarcastic or anything! It\'s just a compliment.',2)
	yield(self,'Continue')

	newText('You see... moving is about [wave amp=50 freq=5]everything[/wave] you will do in this game. At least for now.')
	yield(self,'Continue')

	newText('Don\'t get me wrong, I have all sorts of crazy ideas for a game.')
	yield(self,'Continue')

	newText('However, are they practical? Well... most of them are not.')
	yield(self,'Continue')

	newText('A game scope is quite hard to get right, you know?')
	yield(self,'Continue')

	newText('Get you feet off the ground for just one moment, and before you can notice...')
	yield(self,'Continue')

	newText('...you bit more than what you can chew.')
	yield(self,'Continue')

	newText('Oh, excuse my english if there are any mistakes in what I say.')
	yield(self,'Continue')
#
	newText('Anyway, I believe you want something more [wave amp=50 freq=5][rainbow freq=5 sat=100 val=20]interesting[/rainbow][/wave].')
	yield(self,'Continue')
#
	newText('Right now I\'m just procrastinating, so I might as well try to put more effort into this project.')
	yield(self,'Continue')

	newText('So, what\'s missing...?')
	yield(self,'Continue')

	newText('Better graphics? Uh, sure, since moving is the only thing possible, might as well try to make this [wave amp=50 freq=5]prettier[/wave].')
	yield(self,'Continue')

	newText('The problem is that I am pretty bad at working with graphics. Be it pixel art or anything else.')
	yield(self,'Continue')

	newText('What I CAN do is try to make our scene nicer.')
	yield(self,'Continue')

#	global.emit_signal("ShowPlayerShadow")
#	global.emit_signal("AllowPlayerTilt")
#	global.emit_signal("AllowPlayerParticles")
#	global.emit_signal("ChangePlayerColor")
#	global.emit_signal("ActiveSakuraRain")
	global.emit_signal("ActivatePolish0")
#	VisualServer.set_default_clear_color(Color('5E4352'))

	newText('There! What do you think? Amazing, right???')
	yield(self,'Continue')

	newText('I mean, this surely isn\'t beautiful yet, but it\'s [shake rate=10 level=10]something[/shake] at least.')
	yield(self,'Continue')

	newText('Three years ago and I would be proud with this.')
	yield(self,'Continue')

	newText('...well, to say the truth, I wouldn\'t.')
	yield(self,'Continue')

	newText('I probably would have thought I could make something 100 times cooler.')
	yield(self,'Continue')

	newText('But it is about 100 times easier to say stuff than to do it.')
	yield(self,'Continue')

	newText('...that is a real value, by the way. You can, uh, look it up, if you want.')
	yield(self,'Continue')

	newText('But you [wave amp=50 freq=5]surely[/wave] don\'t want to look it up. I\'m sure of it. Right?')
	yield(self,'Continue')

	newText("You know, let's focus on the game!")
	yield(self,'Continue')

	newText('I think I could try a bit harder to make this look better... hm, let\'s see...')
	yield(self,'Continue')

#	global.emit_signal("ActivatePolish0")
	global.emit_signal("ActivatePolish1")
#	global.emit_signal("ActivatePolish2")

	newText('... is this better? I hope so.')
	yield(self,'Continue')

	newText('This scene is still a bit dead, I think. Let me see some assets...')
	yield(self,'Continue')

	newText('Ok, this is not much, but meh, let\'s give it a try. I hope you don\'t mind, but I\'ll move you a bit.')
	yield(self,'Continue')

	global.player.global_position=Vector2(630,400)*0.5
#	global.emit_signal("ActivatePolish0")
#	global.emit_signal("ActivatePolish1")
	global.emit_signal("ActivatePolish2")

	newText('So, what do you think? I myself think it is a lot better now!')
	yield(self,'Continue')

	newText('However... yeah, you can still only move around and that\'s about it.')
	yield(self,'Continue')

	newText('Oh, I know what I forgot. Sound stuff!')
	yield(self,'Continue')

	newText('First, some footstep sounds.')
	yield(self,'Continue')

	global.emit_signal("ActivatePolish3")

	newText('...well, actually, I just noticed our square don\'t really have any feet...')
	yield(self,'Continue')

	newText('...but I suppose you can imagine it has, right?')
	yield(self,'Continue')

	newText('Ok, it doesn\'t sound incredible, but it\'s better than nothing, right?')
	yield(self,'Continue')

	newText('Next... some music. Actually, I\'ll add some background noise first.')
	yield(self,'Continue')

	global.emit_signal("ActivatePolish4")

	newText('And now, some music.')
	yield(self,'Continue')

	global.emit_signal("ActivatePolish5")

	newText('Much better!')
	yield(self,'Continue')

	newText('However, I still feel like there\'s something left.')
	yield(self,'Continue')

	newText('Maybe some more [wave amp=50 freq=5]visual flair?[/wave]')
	yield(self,'Continue')
	
	global.emit_signal("ActivatePolish6")

	newText('Ok... now, I\'m out of ideas.')
	yield(self,'Continue')
	
	newText('There\'s still the problem of you playing as a square, of course,')
	yield(self,'Continue')
	
	newText('but as I said earlier, I\'m not really keen on making any kind of art stuff.')
	yield(self,'Continue')
	
	newText('Wait... I know what\'s missing. [shake rate=15 level=10]Darn[/shake], such a [shake rate=20 level=10]dumb mistake[/shake]...')
	yield(self,'Continue')

	newText('So, if you didn\'t notice yet, I developed this game. The one that\'s typing all this stuff.')
	yield(self,'Continue')
	
	newText('And there\'s the [shake rate=10 level=10]problem[/shake].')
	yield(self,'Continue')
	
	newText('No, I don\'t mean I am the problem -- well, technically, this IS my fault...')
	yield(self,'Continue')
	
	newText("...but that's not really the point...")
	yield(self,'Continue')
	
	newText("You must know already, what's missing.")
	yield(self,'Continue')
	
	newText("You do, don't you? You must have noticed since... well, I dunno.")
	yield(self,'Continue')
	
	newText(str(OS.get_unix_time()-global.startTime)+" seconds ago.")
	yield(self,'Continue')
	
	newText("Well...")
	yield(self,'Continue')
	
	newText("The game's missing. Yeah, that's it.")
	yield(self,'Continue')
	
	newText("All this stuff, and no gameplay, and now I don't have enough time to make up anything else.")
	yield(self,'Continue')
	
	newText("Not even a sprite for the player character.")
	yield(self,'Continue')
	
	newText("What a horrible destiny, right? Stuck as a square.")
	yield(self,'Continue')
	
	newText("And with no meaning to be here, too. No objective or anything.")
	yield(self,'Continue')
	
	newText("No score to get, nor time to beat...")
	yield(self,'Continue')
	
	newText("Yeah, this is... strange. Sorry about not making a game, I suppose.")
	yield(self,'Continue')
	
	newText("Got nothing else to say right now, I think.")
	yield(self,'Continue')
	
	newText("If you want, you can check this... project? Thing? Yeah, thing seems fine with me.")
	yield(self,'Continue')
	
	newText("You can check this thing's code, if you are interested.")
	yield(self,'Continue')

	newText("There should be a link to it somewhere on its game page, on [url=https://escada-games.itch.io/placeholder-name]itch.io[/url].")
	yield(self,'Continue')
	
	newText("Do you think it would be a shameless plug if I talked about our other games?")
	yield(self,'Continue')
	
	newText("...oh... I forgot to give you the option to answer me, huh.")
	yield(self,'Continue')
	
	newText("What a silly mistake. And another thing that's missing, too.")
	yield(self,'Continue')
	
	newText("Welp, in case you are interested, feel free to check our other games then.")
	yield(self,'Continue')
	
	newText("We got both good games, [wave amp=50 freq=5]and[/wave] bad games! [wave amp=50 freq=5]Wow[/wave], right?")
	yield(self,'Continue')
	
	newText("Don't forget to check out other games from the [url=https://itch.io/jam/godot-wild-jam-31]Godow Wild Jam #31[/url], as well!")
	yield(self,'Continue')
	
	newText("I'm sure other developers didn't forget to make their games as well :)")
	#yield(self,'Continue')
	yield(get_tree().create_timer(15),'timeout')
	
	newText("...at least I hope so. Not doing a game was [wave amp=50 freq=5]my[/wave] idea! Hahaha!")
	yield(self,'Continue')
	
	newText("")
	yield(self,'Continue')

func ContinueDialogue():
	self.emit_signal("Continue")

func EnableNext():
	canContinue=true

func wait(time=2.0):
	$timer.wait_time=time
	$timer.start()
	yield(get_tree().create_timer(time),'timeout')
	emit_signal("Continue")
	

func _input(event):
	if Input.is_action_just_pressed('ui_skip'):
		if self.canContinue or self.percent_visible>0.96:
			emit_signal("Continue")
			get_parent().add_child(sfxOk.instance())
		else:
			self.canContinue=true
			self.percent_visible=1
			$twn.stop_all()
	
	

func newText(string,duration=1):
	self.canContinue=false
	self.percent_visible=0
	self.bbcode_text=string
	$twn.interpolate_property(self,'percent_visible',0,1,duration,Tween.TRANS_LINEAR,Tween.EASE_IN)
	$twn.start()
