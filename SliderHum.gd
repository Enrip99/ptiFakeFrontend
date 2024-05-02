extends HSlider

onready var valor = $"../ValueHum"

func _process(_delta):
	var tempstring = "{value}%"
	valor.set_text(tempstring.format({"value":value}))
