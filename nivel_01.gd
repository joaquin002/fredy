extends Node2D

var anchoLadrillo: float = 48.0
var altoLadrillo:float = 60.0
var escenaObjetoCae:PackedScene 


var mapa = [
	"LLLLLLLLLLLLLLLLLLLLLLLLLLL",
	"L                 L       L",
	"L                 L       L",
	"L        I        L       L",
	"L                 L       L",
	"L                         L",
	"LLLLLLLLL                 L",
	"L                         L",
	"L                         L",
	"L                         L",
	"L                         L",
	"L    LLLLLLLLLLLLLLLLLLLLLL"
]

func generarLaberinto()->void:
	var escenaLadrillo : PackedScene = preload("res://ladrillo.tscn")
	var escenaItem : PackedScene = preload("res://item_01.tscn")
	for y in range(mapa.size()):
		for x in range(mapa[y].length()):
			var caracter = mapa[y][x]
			var posicion = Vector2(x * anchoLadrillo,y * altoLadrillo) + Vector2(anchoLadrillo / 2,altoLadrillo / 2)
			if caracter == "L":
				var ladrillo = escenaLadrillo.instantiate()
				ladrillo.position = posicion
				add_child(ladrillo)
			elif caracter == "I":
				var item = escenaItem.instantiate()
				item.position = posicion
				add_child(item)

func _ready() -> void:
	generarLaberinto()
	escenaObjetoCae = preload("res://objeto_cae.tscn")

func _process(_delta: float) -> void:
	pass


func _on_timer_objeto_cae_timeout() -> void:
	print("la funcion timer se llama")
	var objQueCae = escenaObjetoCae.instantiate()
	objQueCae.position = Vector2(randi()%1280,-30)
	add_child(objQueCae)
