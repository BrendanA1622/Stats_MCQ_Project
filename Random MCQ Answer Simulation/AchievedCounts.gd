extends Label

@onready var streak_1 = $streak1
@onready var streak_2 = $streak2
@onready var streak_3 = $streak3
@onready var streak_4 = $streak4
@onready var streak_5 = $streak5
@onready var streak_6 = $streak6
@onready var streak_7 = $streak7
@onready var streak_8_ = $"streak8+"

@onready var sample_size_text = $"../sampleSizeText"


var sk1: int = 0
var sk2: int = 0
var sk3: int = 0
var sk4: int = 0
var sk5: int = 0
var sk6: int = 0
var sk7: int = 0
var sk8: int = 0


func _ready():
	displayStreakCounts()

func updateStreakCount(s1,s2,s3,s4,s5,s6,s7,s8):
	sk1 = s1
	sk2 = s2
	sk3 = s3
	sk4 = s4
	sk5 = s5
	sk6 = s6
	sk7 = s7
	sk8 = s8
	call_deferred("displayStreakCounts")

func displayStreakCounts():
	streak_1.text = str(sk1)
	streak_2.text = str(sk2)
	streak_3.text = str(sk3)
	streak_4.text = str(sk4)
	streak_5.text = str(sk5)
	streak_6.text = str(sk6)
	streak_7.text = str(sk7)
	streak_8_.text = str(sk8)
	sample_size_text.text = "n = " + str(sk1+sk2+sk3+sk4+sk5+sk6+sk7+sk8)
