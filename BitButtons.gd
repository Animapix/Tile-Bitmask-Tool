extends GridContainer

signal bitsChanged

func _on_Bit1_toggled(button_pressed):
	emit_signal("bitsChanged",0,button_pressed)

func _on_Bit2_toggled(button_pressed):
	emit_signal("bitsChanged",1,button_pressed)

func _on_Bit3_toggled(button_pressed):
	emit_signal("bitsChanged",2,button_pressed)

func _on_Bit4_toggled(button_pressed):
	emit_signal("bitsChanged",3,button_pressed)

func _on_Bit5_toggled(button_pressed):
	emit_signal("bitsChanged",4,button_pressed)

func _on_Bit6_toggled(button_pressed):
	emit_signal("bitsChanged",5,button_pressed)

func _on_Bit7_toggled(button_pressed):
	emit_signal("bitsChanged",6,button_pressed)

func _on_Bit8_toggled(button_pressed):
	emit_signal("bitsChanged",7,button_pressed)

func clear():
	for btn in get_children():
		if btn is TextureButton:
			btn.pressed = false
