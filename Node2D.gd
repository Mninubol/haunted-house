extends Control

var story = "Hello my name is %s I think is %s I %s I think %s I thing %s"
var answers = []
var questions = []
var question_number = 0

func _ready():
	$"VBoxContainer/DisplayText".text = "Welcome to the haunted house \nWhat is your name?"
	
	questions.append("Welcome to the haunted house \nWhat is your name?")
	questions.append("Do you think you're too young to be here?")
	questions.append("Have you ever encountered a ghost?")
	questions.append("What will you do when encountering it?")
	questions.append("Do you think you will survive until the morning?")
	$VBoxContainer/DisplayText.text = questions[0]

func _on_TextureButton_pressed():
	
	if question_number == 0:
		# answer the questions
		answers.append( $PlayerInput.text )
		print( answers )
		$VBoxContainer/DisplayText.text = questions[1]
		$PlayerInput.text = ""
	
	# pause
	if question_number == 1:
		answers.append( $PlayerInput.text )
		print( answers )
		$VBoxContainer/DisplayText.text = questions[2]
		$PlayerInput.text = ""
	
	if question_number == 2:
		answers.append( $PlayerInput.text )
		print( answers )
		$VBoxContainer/DisplayText.text = questions[3]
		$PlayerInput.text = ""
		
	if question_number == 3:
		answers.append( $PlayerInput.text )
		print( answers )
		$VBoxContainer/DisplayText.text = questions[4]
		$PlayerInput.text = ""
		
	if question_number == 4:
		answers.append( $PlayerInput.text )
		print( answers )
		$VBoxContainer/DisplayText.text = story % answers
		$PlayerInput.text = ""
	

	question_number = question_number+1