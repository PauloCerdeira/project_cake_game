extends Sprite

func _ready():
	pass

func _on_AnimationPlayer_animation_finished(_anim_name):
	self.queue_free()
