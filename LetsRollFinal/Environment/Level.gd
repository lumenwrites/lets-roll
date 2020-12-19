extends Spatial

var levels = [
	"res://Environment/Level01.tscn",
	"res://Environment/Level02.tscn",
	"res://Environment/Level03.tscn"
]
export var current_level = 0

func _on_DeathZone_body_entered(body):
	if body.name == "Ball":
		get_tree().reload_current_scene()

func _on_VictoryZone_body_entered(body):
	if body.name == "Ball":
		current_level += 1
		if current_level < levels.size():
			print("Load level", levels[current_level])
			get_tree().change_scene(levels[current_level])
