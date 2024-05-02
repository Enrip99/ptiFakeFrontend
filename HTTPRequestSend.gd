extends HTTPRequest

onready var humSlider = $"../../GridContainer2/HBoxContainer/SliderHum"
onready var humToggle = $"../../GridContainer2/NotifHum"
onready var tempSlider = $"../../GridContainer2/HBoxContainer2/SliderTemp"
onready var tempToggle = $"../../GridContainer2/NotifTemp"
onready var llumCheck = $"../../GridContainer2/CheckboxLlum"
onready var llumToggle = $"../../GridContainer2/NotifLlum"

func _on_ButtonSend_pressed():
	var finalTemp = -1
	var finalHum = -1
	var finalLight = -1
	if humToggle.pressed: finalHum = humSlider.value
	if tempToggle.pressed: finalTemp = tempSlider.value
	if llumToggle.pressed: 
		if llumCheck.pressed: finalLight = 1
		else: finalLight = 0
	request("http://localhost:17078/%s/%s/%s" % [finalTemp, finalHum, finalLight])
