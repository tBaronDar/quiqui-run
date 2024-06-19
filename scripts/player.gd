extends CharacterBody2D
class_name Player

@onready var jump_sound = $jump_sound
@onready var player = $"."

const SPEED = 130
const JUMP_VELOCITY = -300

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")
@onready var animated_sprite = $AnimatedSprite2D

signal collected(pickup, value:int)

func _physics_process(delta):
	# Add the gravity.
	if not is_on_floor():
		velocity.y += gravity * delta

# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction = Input.get_axis("move_left", "move_right")
	
	
	#handle animations
	if is_on_floor():
		if direction ==0:
			animated_sprite.play("idle")
		else :
			animated_sprite.play('run')	
	else:
		animated_sprite.play("jump")
			
	# Handle jump.
	if Input.is_action_just_pressed("jump") and is_on_floor():
		jump_sound.play()
		velocity.y = JUMP_VELOCITY
	
	#Check facing of player	
	if direction < 0:
		animated_sprite.flip_h=true
	elif direction >0 :
		animated_sprite.flip_h=false
	
	#Apply movement
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()
	
#collect pickups
func collect(pickup, value:int):
	collected.emit(pickup,value)
		
