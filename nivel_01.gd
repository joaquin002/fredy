extends Node2D

var anchoLadrillo = 48
var altoLadrillo = 60

var mapa = [
	"LLLLLLLLLLLLLLLLLLLLLLLLLL",
	"L                 L      L",
	"L                 L      L",
	"L        I        L      L",
	"L                 L      L",
	"L                        L",
	"LLLLLLLLL                L",
	"L                        L",
	"L                        L",
	"L                        L",
	"L                        L",
	"L    LLLLLLLLLLLLLLLLLLLL "
]

func generarLaberinto()->void:
	var escenaLadrillo : PackedScene = preload("res://ladrillo.tscn")
	for y in range(mapa.size()):
		for x in range(mapa[y].length()):
			var caracter = mapa[y][x]
			var posicion = Vector2(x * anchoLadrillo,y * altoLadrillo)
			if caracter == "L":
				var ladrillo = escenaLadrillo.instantiate()
				ladrillo.position = posicion
				add_child(ladrillo)



func _ready() -> void:
	generarLaberinto()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
