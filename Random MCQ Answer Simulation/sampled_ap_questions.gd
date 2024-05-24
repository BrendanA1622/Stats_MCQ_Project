extends CanvasLayer

var A: String = "A"
var B: String = "B"
var C: String = "C"
var D: String = "D"
var E: String = "E"

var sample1: Array = [A,D,D,B,C,B,C,A,D,E,D,C,E,C,E,D,A,A,D,C,E,C,A,A,C,E,C,D,B,E]
var sample2: Array = [C,B,E,C,C,D,B,E,C,A,C,C,E,D,E,A,E,D,D,D,C,B,A,A,B,E,C,B,D,D]
var sample3: Array = [E,D,D,E,D,D,A,D,A,B,E,E,E,D,D,B,A,C,E,D,B,C,B,A,E,D,D,A,A,A]
var sample4: Array = [D,C,E,A,D,D,B,B,A,B,D,B,B,E,E,B,A,D,B,D,E,E,B,E,D,B,C,A,C,C]
var sample5: Array = [E,E,B,B,B,E,C,B,D,A,D,C,B,B,C,D,A,C,E,B,C,D,B,E,E,D,D,E,D,C]
var sample6: Array = [B,C,B,E,B,A,B,B,B,D,A,E,C,B,D,C,D,B,A,C,B,A,D,A,D,B,D,D,E,E]
var sample7: Array = [C,E,B,D,E,B,D,C,D,A,B,E,C,D,B,B,B,E,C,A,B,E,D,C,A,C,C,D,C,D]
var sample8: Array = [A,D,A,C,B,D,D,B,A,A,E,D,D,A,C,A,C,D,D,E,B,C,C,A,B,D,E,C,A,B]
var sample9: Array = [D,A,B,D,D,E,A,C,B,A,A,A,B,C,C,C,B,C,D,C,B,A,C,D,C,E,E,E,D,B]
var sample10: Array = [A,D,B,E,C,C,A,A,D,D,A,B,B,A,E,A,D,E,B,E,D,E,E,D,D,C,B,E,B,C]
var sample11: Array = [A,C,E,B,D,A,A,B,D,E,E,E,C,B,D,A,A,B,B,E,A,B,D,C,D,B,C,A,E,C]
var sample12: Array = [C,E,A,C,C,A,C,E,A,B,C,A,B,C,D,B,B,C,D,E,A,C,E,D,A,D,E,A,D,B]
var sample13: Array = [C,A,D,A,A,E,E,B,D,E,A,E,B,E,B,C,D,E,D,E,C,A,E,C,C,E,D,C,D,E]
var sample14: Array = [B,A,C,D,C,A,D,B,D,B,A,D,B,E,A,D,B,A,A,C,A,E,E,A,B,D,A,D,D,D]
var sample15: Array = [E,A,B,A,C,C,A,C,D,E,A,C,C,E,A,C,C,A,C,C,E,D,A,E,B,B,C,D,B,B]
var sample16: Array = [D,B,B,E,D,B,C,C,D,A,D,E,E,A,C,D,B,B,B,D,A,E,B,A,C,E,D,B,D,E]
var sample17: Array = [B,E,D,D,C,B,C,D,D,A,E,B,A,E,A,B,C,A,D,B,B,C,D,D,B,D,C,D,D,C]
var sample18: Array = [D,A,B,C,E,E,D,E,A,E,C,A,B,C,A,E,A,B,B,B,A,D,E,A,A,E,A,D,B,A]
var sample19: Array = [C,E,A,A,B,E,B,B,A,D,D,D,E,A,A,C,B,C,D,A,E,D,E,C,E,C,A,E,E,D]

var samplingArray: Array = [sample1,sample2,sample3,sample4,sample5,sample6,sample7,sample8,sample9,sample10,sample11,sample12,sample13,sample14,sample15,sample16,sample17,sample18,sample19]

@onready var streak_1 = $ObservedCounts/streak1
@onready var streak_2 = $ObservedCounts/streak2
@onready var streak_3 = $ObservedCounts/streak3
@onready var streak_4_ = $ObservedCounts/streak4_

var runStreaksArray = [0,0,0,0]

func _ready():
	for particSample in samplingArray:
		var lastLetter: String = "no_previous"
		var run: int = 1622
		for particLetter in particSample:
			if particLetter == lastLetter:
				run += 1
			
			else:
				if run != 1622:
					runStreaksArray[run - 1] += 1
				run = 1
			
			lastLetter = particLetter
		runStreaksArray[run - 1] += 1
	
	streak_1.text = str(runStreaksArray[0])
	streak_2.text = str(runStreaksArray[1])
	streak_3.text = str(runStreaksArray[2])
	streak_4_.text = str(runStreaksArray[3])


