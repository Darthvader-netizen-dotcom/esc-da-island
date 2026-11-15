extends Area2D

@export var target_level : PackedScene

func _ready():
 body_entered.connect(_on_body_entered)

func _on_body_entered(body):
 if body is Sprite2D:
  get_tree().change_scene_to_packed(target_level)
