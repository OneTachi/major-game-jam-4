extends Node2D

var income = 0 
var rep_income = 0
var coin_cost = 0
var rep_cost = 0 

func set_connect():
	Main.connect("update_text", self, "update_text")

func set_income(coin, reputation):
	Main.add_income(coin - income)
	Main.add_rep(reputation - rep_income)
	income = coin
	rep_income = reputation

func set_temp_income(value):
	Main.add_temp_income(value)

func set_temp_rep(value):
	Main.add_temp_rep(value)

func set_cost(coin, reputation):
	coin_cost = coin
	rep_cost = reputation

func can_buy_upgrade():
	return Main.check_credits(coin_cost)

func buy_upgrade():
	Main.add_temp_income(coin_cost)
	Main.add_temp_rep(rep_cost)
