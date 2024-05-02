extends HSlider

onready var valor = $"../ValueTemp"

func _process(_delta):
	var tempstring = "{value}º"
	valor.set_text(tempstring.format({"value":value}))
