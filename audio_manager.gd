extends Node

# audio manager! 

var signalhub = SignalManager

func _ready():
	signalhub.say_hi.connect(say_hi_cafe) 
	signalhub.say_hi.connect(field_waves)  

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func field_waves():
	$BGM/waves_bg.playing 
	print("playing field rec waves for Outer Lighthouse . bgm")

func say_hi_cafe():
	print("code works") # this is whats happening: if you see "code works" in the editor output window, that means the signal emitted from cafe_mode.tscn has successfully connected to this scene, running the function which made it print.  confirms Cafe Mode has instantiated 
