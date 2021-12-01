extends "res://Market.gd"

var level = 1
var prev_cost = 750
var prev_income = 200

func buy_upgrade():
	print("hello")

func _ready():
	set_cost(750, 0)
	set_income(200, 0)
	.set_connect()

func update_text():
	print("hello")

func buy():
	if can_buy_upgrade():
		buy_upgrade()
		increase_level()

func increase_cost():
	prev_cost = prev_cost * 1.2
	set_cost(prev_cost, 0)

func increase_income():
	prev_income = prev_income * 1.2
	set_income(prev_income, 0)

func increase_level():
	increase_cost()
	increase_income()
	level += 1


