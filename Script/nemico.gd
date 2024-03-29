extends CharacterBody2D

var velocita_movimento = 100 # Velocità di movimento del nemico
var player : Node2D # Riferimento al giocatore

func _ready():
	# Prendiamo il riferimento al giocatore una volta sola per risparmiare, tanto non cambia
	player = get_node("/root/Livello/Player")

func _physics_process(delta):
	# Calcolo la direzione verso il giocatore
	var direzione = global_position.direction_to(player.global_position)
	print("Player: [%d,%d] enemy: [%d,%d]" % [player.global_position.x, player.global_position.y, global_position.x, global_position.y])
	
	
	# Applico la velocità alla direzione
	velocity = direzione * velocita_movimento
	
	# Avvio il calcolo della nuova posizione in base alla velocity
	move_and_slide()
