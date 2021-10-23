extends Control

var bitMask = 0

func _ready():
	var _result = $BitButtons.connect("bitsChanged",self,"on_bit_changed")

func on_bit_changed(bit, enabled):
	if enabled:
		bitMask = enable_bit(bitMask,bit)
	else:
		bitMask = disable_bit(bitMask,bit)
	refreshLabels()

func refreshLabels():
	$Labels/Decimal.text = String(bitMask)
	$Labels/Binary.text = String(decimalToBinary(bitMask))

func is_bit_enabled(mask, index):
	return mask & (1 << index) != 0

func enable_bit(mask, index):
	return mask | (1 << index)

func disable_bit(mask, index):
	return mask & ~(1 << index)

func decimalToBinary(var decimal_value):
	var binary_string = "" 
	var temp 
	var count = 31 # Checking up to 32 bits 
	while(count >= 0):
		temp = decimal_value >> count 
		if(temp & 1):
			binary_string = binary_string + "1"
		else:
			binary_string = binary_string + "0"
		count -= 1
	return int(binary_string)


func _on_Clear_down():
	bitMask = 0
	refreshLabels()
	$BitButtons.clear()
