extends CanvasLayer

var A: String = "A"
var B: String = "B"
var C: String = "C"
var D: String = "D"
var E: String = "E"

var mcAnswerArray1: Array = [A,D,D,B,C,B,C,A,D,E,D,C,E,C,E,D,A,A,D,C,E,C,A,A,C,E,C,D,B,E]
var mcAnswerArray2: Array = [C,B,E,C,C,D,B,E,C,A,C,C,E,D,E,A,E,D,D,D,C,B,A,A,B,E,C,B,D,D]
var mcAnswerArray3: Array = [B,E,D,B,D,A,A,D,D,A,E,C,C,B,A,C,A,B,A,B,D,E,A,B,C,D,C,E,B,E]
var mcAnswerArray4: Array = [E,C,A,B,C,C,B,C,B,E,A,B,B,C,C,A,C,B,A,C,D,A,D,A,B,B,A,D,E,E]
var mcAnswerArray5: Array = [E,A,E,E,B,E,A,C,A,E,E,D,B,E,E,B,D,B,E,D,A,A,A,E,D,E,E,C,D,E]
var mcAnswerArray6: Array = [E,D,D,E,D,D,A,D,A,B,E,E,E,D,D,B,A,C,E,D,B,C,B,A,E,D,D,A,A,A]
var mcAnswerArray7: Array = [D,C,E,A,D,D,B,B,A,B,D,B,B,E,E,B,A,D,B,D,E,E,B,E,D,B,C,A,C,C]
var mcAnswerArray8: Array = [E,E,B,B,B,E,C,B,D,A,D,C,B,B,C,D,A,C,E,B,C,D,B,E,E,D,D,E,D,C]
var mcAnswerArray9: Array = [C,E,D,D,C,E,C,B,D,D,E,B,D,D,E,C,D,B,C,C,C,D,E,A,D,C,C,B,B,D]
var mcAnswerArray10: Array = [C,E,C,A,A,C,C,E,B,C,B,D,B,D,B,D,D,C,C,E,C,B,C,B,A,C,B,D,B,B]

var mcAnswerArray11: Array = [D,E,D,D,E,B,C,E,C,E,C,C,C,A,D,B,A,B,A,C,E,D,D,A,C,B,A,C,E,D]
var mcAnswerArray12: Array = [B,C,B,E,B,A,B,B,B,D,A,E,C,B,D,C,D,B,A,C,B,A,D,A,D,B,D,D,E,E]
var mcAnswerArray13: Array = [C,E,B,D,E,B,D,C,D,A,B,E,C,D,B,B,B,E,C,A,B,E,D,C,A,C,C,D,C,D]
var mcAnswerArray14: Array = [A,D,A,C,B,D,D,B,A,A,E,D,D,A,C,A,C,D,D,E,B,C,C,A,B,D,E,C,A,B]
var mcAnswerArray15: Array = [D,A,B,D,D,E,A,C,B,A,A,A,B,C,C,C,B,C,D,C,B,A,C,D,C,E,E,E,D,B]
var mcAnswerArray16: Array = [A,D,B,E,C,C,A,A,D,D,A,B,B,A,E,A,D,E,B,E,D,E,E,D,D,C,B,E,B,C]
var mcAnswerArray17: Array = [C,B,D,A,A,D,B,E,E,D,C,B,A,A,D,B,E,D,E,B,C,E,C,A,C,D,C,B,C,C]
var mcAnswerArray18: Array = [A,C,E,B,D,A,A,B,D,E,E,E,C,B,D,A,A,B,B,E,A,B,D,C,D,B,C,A,E,C]
var mcAnswerArray19: Array = [C,A,C,D,E,C,D,C,B,E,E,B,A,C,B,D,A,C,D,E,E,D,A,B,A,E,D,D,C,A]
var mcAnswerArray20: Array = [C,E,A,C,C,A,C,E,A,B,C,A,B,C,D,B,B,C,D,E,A,C,E,D,A,D,E,A,D,B]

var mcAnswerArray21: Array = [C,A,D,A,A,E,E,B,D,E,A,E,B,E,B,C,D,E,D,E,C,A,E,C,C,E,D,C,D,E]
var mcAnswerArray22: Array = [E,D,E,D,D,C,B,B,A,B,C,E,A,E,D,C,A,A,D,D,A,D,E,C,E,B,B,E,C,C]
var mcAnswerArray23: Array = [B,D,D,B,A,A,B,E,D,C,B,D,A,E,C,D,C,A,E,D,A,B,E,B,B,A,C,A,B,C]
var mcAnswerArray24: Array = [B,A,C,D,C,A,D,B,D,B,A,D,B,E,A,D,B,A,A,C,A,E,E,A,B,D,A,D,D,D]
var mcAnswerArray25: Array = [B,B,A,E,C,D,E,C,E,A,A,C,D,A,A,B,A,B,C,D,E,B,A,A,E,A,A,A,E,A]
var mcAnswerArray26: Array = [E,A,B,A,C,C,A,C,D,E,A,C,C,E,A,C,C,A,C,C,E,D,A,E,B,B,C,D,B,B]
var mcAnswerArray27: Array = [D,B,B,E,D,B,C,C,D,A,D,E,E,A,C,D,B,B,B,D,A,E,B,A,C,E,D,B,D,E]
var mcAnswerArray28: Array = [B,E,D,D,C,B,C,D,D,A,E,B,A,E,A,B,C,A,D,B,B,C,D,D,B,D,C,D,D,C]
var mcAnswerArray29: Array = [D,A,B,C,E,E,D,E,A,E,C,A,B,C,A,E,A,B,B,B,A,D,E,A,A,E,A,D,B,A]
var mcAnswerArray30: Array = [C,E,A,A,B,E,B,B,A,D,D,D,E,A,A,C,B,C,D,A,E,D,E,C,E,C,A,E,E,D]

var mcAnswerArray31: Array = [B,C,B,C,B,E,A,D,D,B,A,C,B,E,D,B,C,E,A,C,C,D,B,A,B,E,A,B,D,A]
var mcAnswerArray32: Array = [E,C,A,B,D,A,C,B,E,A,D,C,E,D,A,C,E,D,E,B,A,C,C,A,B,D,D,C,C,C]
var mcAnswerArray33: Array = [D,C,A,B,B,A,D,C,C,C,B,A,C,B,A,A,B,B,D,D,D,C,A,D,B,C,B,C,A,D]
var mcAnswerArray34: Array = [A,D,B,C,B,B,C,A,C,D,C,D,B,C,B,C,B,D,B,C,B,D,C,A,D,A,C,A,A,C]
var mcAnswerArray35: Array = [B,A,D,B,C,C,B,C,B,D,A,C,A,D,D,B,B,C,B,C,A,C,C,A,B,D,D,B,D,C]
var mcAnswerArray36: Array = [C,A,B,C,C,E,D,C,B,B,B,C,B,E,A,D,C,B,B,E,D,D,E,D,A,A,D,E,E,C]
var mcAnswerArray37: Array = [C,D,B,A,D,C,C,B,B,A,C,D,A,A,C,B,B,C,D,C,B,C,A,B,B,A,D,A,C,A]
var mcAnswerArray38: Array = [E,B,C,B,B,D,A,E,A,B,E,D,C,E,B,D,B,D,B,A,B,C,D,D,C,E,C,E,A,D]
var mcAnswerArray39: Array = [A,C,A,E,B,D,B,E,B,A,B,A,B,A,D,E,C,B,A,C,B,E,A,B,B,A,E,C,B,C]
var mcAnswerArray40: Array = [B,E,D,A,A,A,B,C,B,D,B,C,C,D,A,D,D,C,D,C,C,C,E,A,B,B,C,A,C,E]

var mcAnswerArray41: Array = [C,E,B,B,E,B,D,B,C,A,A,E,D,D,B,A,B,D,D,B,C,B,D,A,D,B,A,A,B,D]
var mcAnswerArray42: Array = [C,E,B,D,B,D,A,D,B,E,E,D,C,D,D,D,E,B,A,A,D,B,A,C,D,C,C,C,A,E]
var mcAnswerArray43: Array = [B,A,A,D,E,E,E,B,B,A,D,B,C,A,E,C,D,D,B,E,B,D,C,E,E,B,C,D,B,C]
var mcAnswerArray44: Array = [B,B,C,D,B,B,A,B,A,C,D,A,A,C,D,A,E,B,D,C,D,D,B,B,B,A,C,B,D,A]
var mcAnswerArray45: Array = [E,E,D,A,C,C,B,D,D,D,C,D,B,A,A,A,E,A,E,C,C,C,E,E,C,A,E,A,B,D]
var mcAnswerArray46: Array = [E,E,D,B,A,D,B,D,C,E,D,C,C,C,A,A,D,E,C,B,A,D,E,C,D,D,A,B,B,D]
var mcAnswerArray47: Array = [C,B,C,D,B,B,E,A,D,D,C,C,E,A,B,E,D,D,A,C,E,D,C,A,C,C,C,D,D,E]
var mcAnswerArray48: Array = [E,A,B,C,B,E,D,E,A,E,B,D,A,E,B,A,A,D,B,D,C,A,C,A,C,B,C,D,A,E]
var mcAnswerArray49: Array = [C,B,D,D,C,C,B,E,B,B,D,B,B,D,B,C,A,E,C,B,E,B,B,A,D,C,D,D,E,A]
var mcAnswerArray50: Array = [C,D,B,C,C,D,A,B,C,A,B,D,D,D,E,C,A,A,C,C,A,E,E,B,D,C,E,A,E,E]

var mcAnswerArray51: Array = [D,A,B,D,A,B,C,B,A,D,D,D,B,C,A,B,D,C,C,D,D,C,A,B,A,D,C,B,D,C]
var mcAnswerArray52: Array = [D,D,B,D,A,B,C,A,D,C,B,A,C,A,B,D,A,A,C,C,A,D,C,B,B,C,B,D,C,B]

var allAnswerArrays: Array = [mcAnswerArray1,mcAnswerArray2,mcAnswerArray3,mcAnswerArray4,mcAnswerArray5,
								mcAnswerArray6,mcAnswerArray7,mcAnswerArray8,mcAnswerArray9,mcAnswerArray10,
								mcAnswerArray11,mcAnswerArray12,mcAnswerArray13,mcAnswerArray14,mcAnswerArray15,
								mcAnswerArray16,mcAnswerArray17,mcAnswerArray18,mcAnswerArray19,mcAnswerArray20,
								mcAnswerArray21,mcAnswerArray22,mcAnswerArray23,mcAnswerArray24,mcAnswerArray25,
								mcAnswerArray26,mcAnswerArray27,mcAnswerArray28,mcAnswerArray29,mcAnswerArray30,
								mcAnswerArray31,mcAnswerArray32,mcAnswerArray33,mcAnswerArray34,mcAnswerArray35,
								mcAnswerArray36,mcAnswerArray37,mcAnswerArray38,mcAnswerArray39,mcAnswerArray40,
								mcAnswerArray41,mcAnswerArray42,mcAnswerArray43,mcAnswerArray44,mcAnswerArray45,
								mcAnswerArray46,mcAnswerArray47,mcAnswerArray48,mcAnswerArray49,mcAnswerArray50,
								mcAnswerArray51,mcAnswerArray52]

func _ready():
	for particAnswerArray in allAnswerArrays:
		
		
		for particLetterAnswer in particAnswerArray:
			print(particLetterAnswer)
