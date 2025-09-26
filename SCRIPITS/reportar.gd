extends Node2D

# Variables para guardar la selección del jugador
var seleccion = null
var correcto = "izquierda"  # la imagen correcta

func _ready():
	# Conectamos señales de los botones/personajes y el botón rojo
	$Button.connect("pressed", self, "_on_personaje_izq_pressed")
	$Button2.connect("pressed", self, "_on_personaje_abajo_pressed")
	$Button3.connect("pressed", self, "_on_personaje_der_pressed")
	$Button4.connect("pressed", self, "_on_boton_rojo_pressed")


# Cuando se selecciona un personaje
func _on_personaje_izq_pressed():
	seleccion = "izquierda"
	print("Seleccionaste el personaje izquierdo")

func _on_personaje_abajo_pressed():
	seleccion = "abajo"
	print("Seleccionaste el personaje de abajo")

func _on_personaje_der_pressed():
	seleccion = "derecha"
	print("Seleccionaste el personaje derecho")


# Cuando se aprieta el botón rojo
func _on_boton_rojo_pressed():
	if seleccion == null:
		print("Debes seleccionar un sospechoso primero")
		return
	
	if seleccion == correcto:
		mostrar_mensaje("¡Lo lograste! 😎")
	else:
		mostrar_mensaje("Fallaste, el hacker te descubrió 💀")


# Función para mostrar un mensaje en pantalla
func mostrar_mensaje(texto: String):
	$Label.text = texto

 
