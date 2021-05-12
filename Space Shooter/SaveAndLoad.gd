extends Node

const SAVE_DATA_PATH = "res://save_data.json"

var default_save_data = {
	highscore = 0,
}

func save_data_to_file(save_data):
	var save_file = File.new()
	var json_string = to_json(save_data)
	save_file.open(SAVE_DATA_PATH, File.WRITE)
	save_file.store_line(json_string)
	save_file.close()

func load_data_from_file():
	pass
