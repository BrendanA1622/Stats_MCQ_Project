extends Label

#@onready var answerAssignmentArray = [0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0,0,0]
#@onready var q_1 = $Q1

@onready var achieved_counts = $"../AchievedCounts"
@onready var text_edit = $"../TextEdit"
@onready var cont_sample_timer = $"../CheckBox/ContSampleTimer"
@onready var line_edit = $"../CheckBox/LineEdit"

@onready var answerLabelArray = [$Q1,$Q2,$Q3,$Q4,$Q5,$Q6,$Q7,$Q8,$Q9,$Q10, 
								$Q11,$Q12,$Q13,$Q14,$Q15,$Q16,$Q17,$Q18,$Q19,$Q20,
								$Q21,$Q22,$Q23,$Q24,$Q25,$Q26,$Q27,$Q28,$Q29,$Q30,]

var runStreaksArray = []

var continuouslySample: bool = false

func _ready():
	randomizeSample()

func _on_new_sample_button_pressed():
	randomizeSample()

func _on_twenty_sample_button_pressed():
	var j = 0
	while(j < 20):
		randomizeSample()
		j += 1

func _on_custom_sample_button_pressed():
	randomSamples()

func _on_cont_sample_timer_timeout():
	cont_sample_timer.stop()
	cont_sample_timer.wait_time = float(line_edit.text)
	randomSamples()

func _on_check_box_toggled(toggled_on):
	continuouslySample = toggled_on

func randomSamples():
	var k = 0
	while(k < int(text_edit.text)):
		randomizeSample()
		k += 1
	if continuouslySample == true:
		cont_sample_timer.start()
	

func randomizeSample():
	var randomLetter: String
	var randomNumber: int
	var i: int = 0
	var lastLetter: String = "no_previous"
	var run: int = 1622
	
	for jAnswer in answerLabelArray:
		jAnswer.add_theme_color_override("font_color", Color.WHITE)
	
	for iQuestion in answerLabelArray:
		randomNumber = randi_range(0,4)
		if randomNumber == 0:
			randomLetter = "A"
		elif randomNumber == 1:
			randomLetter = "B"
		elif randomNumber == 2:
			randomLetter = "C"
		elif randomNumber == 3:
			randomLetter = "D"
		elif randomNumber == 4:
			randomLetter = "E"
		if i <= 8:
			iQuestion.text = str(answerLabelArray[i]).substr(1,1) + "). " + randomLetter
		else:
			iQuestion.text = str(answerLabelArray[i]).substr(1,2) + "). " + randomLetter
		
		if randomLetter == lastLetter:
			run += 1
			if run == 2:
				answerLabelArray[i - 1].add_theme_color_override("font_color", Color.AQUA)
				iQuestion.add_theme_color_override("font_color", Color.AQUA)
			elif run == 3:
				answerLabelArray[i - 2].add_theme_color_override("font_color", Color.GREEN_YELLOW)
				answerLabelArray[i - 1].add_theme_color_override("font_color", Color.GREEN_YELLOW)
				iQuestion.add_theme_color_override("font_color", Color.GREEN_YELLOW)
			elif run == 4:
				answerLabelArray[i - 3].add_theme_color_override("font_color", Color.PALE_VIOLET_RED)
				answerLabelArray[i - 2].add_theme_color_override("font_color", Color.PALE_VIOLET_RED)
				answerLabelArray[i - 1].add_theme_color_override("font_color", Color.PALE_VIOLET_RED)
				iQuestion.add_theme_color_override("font_color", Color.PALE_VIOLET_RED)
			elif run == 5:
				answerLabelArray[i - 4].add_theme_color_override("font_color", Color.SANDY_BROWN)
				answerLabelArray[i - 3].add_theme_color_override("font_color", Color.SANDY_BROWN)
				answerLabelArray[i - 2].add_theme_color_override("font_color", Color.SANDY_BROWN)
				answerLabelArray[i - 1].add_theme_color_override("font_color", Color.SANDY_BROWN)
				iQuestion.add_theme_color_override("font_color", Color.SANDY_BROWN)
			elif run == 6:
				answerLabelArray[i - 5].add_theme_color_override("font_color", Color.DARK_MAGENTA)
				answerLabelArray[i - 4].add_theme_color_override("font_color", Color.DARK_MAGENTA)
				answerLabelArray[i - 3].add_theme_color_override("font_color", Color.DARK_MAGENTA)
				answerLabelArray[i - 2].add_theme_color_override("font_color", Color.DARK_MAGENTA)
				answerLabelArray[i - 1].add_theme_color_override("font_color", Color.DARK_MAGENTA)
				iQuestion.add_theme_color_override("font_color", Color.DARK_MAGENTA)
			elif run == 7:
				answerLabelArray[i - 6].add_theme_color_override("font_color", Color.CHOCOLATE)
				answerLabelArray[i - 5].add_theme_color_override("font_color", Color.CHOCOLATE)
				answerLabelArray[i - 4].add_theme_color_override("font_color", Color.CHOCOLATE)
				answerLabelArray[i - 3].add_theme_color_override("font_color", Color.CHOCOLATE)
				answerLabelArray[i - 2].add_theme_color_override("font_color", Color.CHOCOLATE)
				answerLabelArray[i - 1].add_theme_color_override("font_color", Color.CHOCOLATE)
				iQuestion.add_theme_color_override("font_color", Color.CHOCOLATE)
			elif run >= 8:
				answerLabelArray[i - 7].add_theme_color_override("font_color", Color.BLACK)
				answerLabelArray[i - 6].add_theme_color_override("font_color", Color.BLACK)
				answerLabelArray[i - 5].add_theme_color_override("font_color", Color.BLACK)
				answerLabelArray[i - 4].add_theme_color_override("font_color", Color.BLACK)
				answerLabelArray[i - 3].add_theme_color_override("font_color", Color.BLACK)
				answerLabelArray[i - 2].add_theme_color_override("font_color", Color.BLACK)
				answerLabelArray[i - 1].add_theme_color_override("font_color", Color.BLACK)
				iQuestion.add_theme_color_override("font_color", Color.BLACK)
		
		
		else:
			runStreaksArray.append(run)
			run = 1
		
		lastLetter = randomLetter
		i += 1
	
	runStreaksArray.append(run)
	runStreaksArray.erase(1622)
	
	achieved_counts.updateStreakCount(runStreaksArray.count(1),runStreaksArray.count(2),runStreaksArray.count(3),runStreaksArray.count(4),runStreaksArray.count(5),runStreaksArray.count(6),runStreaksArray.count(7),runStreaksArray.count(8)+runStreaksArray.count(9)+runStreaksArray.count(10)+runStreaksArray.count(11)+runStreaksArray.count(12)+runStreaksArray.count(13)+runStreaksArray.count(14)+runStreaksArray.count(15))








