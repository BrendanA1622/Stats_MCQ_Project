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

var streakNum: int = 0

var exp1: float = 0.0
var exp2: float = 0.0
var exp3: float = 0.0
var exp4: float = 0.0
var exp5: float = 0.0
var exp6: float = 0.0
var exp7: float = 0.0
var exp8: float = 0.0

var chi_squared: float = 0.0
@onready var chi_value = $"../ChiSquaredImage/chi_value"

func _ready():
	displayStreakCounts()

func updateStreakCount(s1,s2,s3,s4,s5,s6,s7,s8):
	streakNum = (s1+s2+s3+s4+s5+s6+s7+s8) - (sk1+sk2+sk3+sk4+sk5+sk6+sk7+sk8)
	
	sk1 = s1
	sk2 = s2
	sk3 = s3
	sk4 = s4
	sk5 = s5
	sk6 = s6
	sk7 = s7
	sk8 = s8
	
	exp1 += streakNum * 0.8066
	exp2 += streakNum * 0.156
	exp3 += streakNum * 0.03
	exp4 += streakNum * 0.00582
	exp5 += streakNum * 0.00112
	exp6 += streakNum * 0.000216
	exp7 += streakNum * 0.000041
	exp8 += streakNum * 0.00001
	
	chi_squared = pow(sk1-exp1,2.0) / exp1 + pow(sk2-exp2,2.0) / exp2 + pow(sk3-exp3,2.0) / exp3 + pow(sk4-exp4,2.0) / exp4 + pow(sk5-exp5,2.0) / exp5 + pow(sk6-exp6,2.0) / exp6 + pow(sk7-exp7,2.0) / exp7 + pow(sk8-exp8,2.0) / exp8
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
	
	chi_value.text = str(chi_squared)
	chi_value.add_theme_color_override("font_color", Color((chi_squared - 7.0)/20.0 + 0.2,1.2 - (chi_squared/20.0),0.5,1))
