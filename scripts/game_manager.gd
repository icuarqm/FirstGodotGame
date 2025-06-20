extends Node

var score = 0
const TOTAL_COINS = 9

@onready var score_label: Label = $ScoreLabel

func add_point():
	score += 1
	update_score_text()
	
func update_score_text():
	var remaining = TOTAL_COINS - score
	match score:
		1:
			score_label.text = "You collected 1 coin. 8 more to go!"
		TOTAL_COINS:
			score_label.text = "All coins collected!"
		_:
			score_label.text = "You collected %d coins. %d more to go!" % [score, remaining]
