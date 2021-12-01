extends Node2D

signal turn_over
signal update_text

const ship_condition = 20

var credits = 5000 setget add_credits
var reputation = 100 setget add_rep
var temp_rep = 0 setget add_temp_rep
var income = 100 setget add_income
var temp_income = 0 setget add_temp_income
var ships = 0 setget add_ships

func add_rep(value):
	reputation += value

func add_credits(value):
	credits += value
	emit_signal("update_text")

func add_income(value):
	income += value

func add_temp_income(value):
	temp_income += value

func add_temp_rep(value):
	temp_rep += value

func add_ships(value):
	ships += value

func get_remaining_ships():
	return ship_condition - ships

func clear_temp_income():
	self.temp_income = -temp_income
	self.temp_rep = -temp_rep

func check_credits(value):
	if credits - value < 0:
		return false
	else:
		return true

func check_conditions():
	if ships == ship_condition:
		return true
	return false

func turn_over():
	self.credits = income + temp_income
	self.reputation = temp_rep
	clear_temp_income()
	emit_signal("turn_over")
	#print(credits)

