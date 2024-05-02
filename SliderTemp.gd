extends HSlider

onready var valor = $"../ValueTemp"

func _process(_delta):
	var tempstring = "{value}%"
	valor.set_text(tempstring.format({"value":value}))
