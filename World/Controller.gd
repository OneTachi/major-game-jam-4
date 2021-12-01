extends Node2D

onready var income_text = $Background/Income

func _ready():
	update_turns()
	Main.connect("turn_over", self, "update_turns")
	Main.connect("update_text", self, "update_turns")

func update_turns():
	income_text.parse_bbcode("[center]Income = " + str(Main.income) + "\nCredits: " + str(Main.credits) + "[/center]")



