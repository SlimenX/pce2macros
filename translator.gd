extends Control

@onready var input_hex: LineEdit = $HEX2MACROS/Input
@onready var output_result: TextEdit = $HEX2MACROS/Output

const hex_table: Dictionary = {
	"9F": "31", "9E": "30", "9D": "29", "9C": "28", "9B": "27", "9A": "26",
	"99": "25", "98": "24", "97": "23", "96": "22", "95": "21", "94": "20",
	"93": "19", "92": "18", "91": "17", "90": "16", "8F": "15", "8E": "14",
	"8D": "13", "8C": "12", "8B": "11", "8A": "10", "89": "9",  "88": "8",
	"87": "7",  "86": "6",  "85": "5",  "84": "4",  "83": "3",  "82": "2",
	"81": "1",  "80": "0"
}

func _ready() -> void:
	input_hex.text_submitted.connect(_on_input_text_submitted)
	
	output_result.editable = false
	output_result.text = ""

func _on_input_text_submitted(_new_text: String) -> void:
	procesar_traduccion()

func procesar_traduccion() -> void:
	var value_entered: String = input_hex.text.strip_edges()
	
	if value_entered.is_empty():
		output_result.text = "Please Enter a value"
		$Sounds/NoValue.play()
		return
	
	var tokens: PackedStringArray = value_entered.split(" ")
	var output_results: Array[String] = []
	
	for token in tokens:
		var clave: String = token.to_upper().strip_edges()
		if hex_table.has(clave):
			output_results.append(hex_table[clave])
			$Sounds/Translate.play()
		else:
			output_results.append("?")
			
	
	output_result.text = " ".join(output_results)
