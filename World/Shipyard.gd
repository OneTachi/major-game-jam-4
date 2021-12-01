extends AnimatedSprite

onready var window = $Button/CanvasLayer/Popup
onready var pricelabel = $Button/CanvasLayer/Popup/Panel/Prices
onready var yieldlabel = $Button/CanvasLayer/Popup/Panel/Yield

var ship_cost
var base_cost = 500


func _ready():
	randomize()
	create_ship_cost()
	update_text()

func create_ship_cost():
	ship_cost = round(base_cost * ((randi() % 3 + 1) + randf()))
	update_text()

func update_text():
	pricelabel.parse_bbcode("[center] $$$ = " + str(ship_cost) + "[/center]")
	yieldlabel.parse_bbcode("[center] Current # of Ships: " + str(Main.ships) + "[/center]")

func buy_ship():
	if Main.check_credits(ship_cost):
		Main.add_credits(-ship_cost)
		Main.add_ships(1)
		create_ship_cost()
		update_text()
	else:
		pass


func _on_Button_pressed():
	window.popup()


func buy():
	buy_ship()
