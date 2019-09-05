extends Control

var story = "Hello my name is %s I think is %s I %s I think %s I thing %s"
var answers = ["Max" , "No" , "Never" , "Run" , "Survive"]
var questions = []


func _ready():
	$"VBoxContainer/DisplayText".text = "Welcome to the haunted house \nWhat is your name?"
	
	questions.append("Welcome to the haunted house \nWhat is your name?")
	questions.append("Do you think you're too young to be here?")
	questions.append("Have you ever encountered a ghost?")
	questions.append("What will you do when encountering it?")
	questions.append("Do you think you will survive until the morning?")
	print(questions)
	print(len(questions))
	print(questions[0]) #first question 
	print(questions[1])
	print(questions[2])
	print(questions[3])
	print(questions[4])


func _on_TextureButton_pressed():
	$"VBoxContainer/DisplayText".text = $"TextEdit".text
