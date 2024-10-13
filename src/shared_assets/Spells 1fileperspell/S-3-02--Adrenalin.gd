var name : String = 'Adrenalin'
var attributes : Array = []
var tags : Array = ['Magical', 'Buff']
var schools : Array = ['Priest','Sorcerer']
var targettile : int = 0  #0=anywhere 1=creature 2=empty 3=nowall 
var level : int = 3
var selection_cost : int = 6
var max_plevel : int = 7
var in_field : bool = true
var in_combat : bool = true
var description : String = 'This spell adds a magical substance to the bloodstream. All those affected will move faster and have more Actions per Round than normal.'
var resist : int = 0 #ignores resistances and dodge
#var aoe : String = 'b1'
var los : bool = true
var ray : bool = false
var rot : bool = false
var proj_tex : String = 'Ball'
var proj_hit : String = 'Cloud'
var sounds : Array = ['claps.wav','dididup.wav']
var max_focus_loss : int = 0

static func get_targets(_power : int, __casterchar)->int :
	return 1

static func get_min_duration(_power : int, __casterchar) -> int :
	return _power * 5

static func get_max_duration(_power : int, __casterchar) -> int :
	return _power * 10

static func get_range(_power : int, __casterchar) -> int :
	return 4
	
static func get_min_damage(_power:int, _casterchar) :
	return 0
	
static func get_max_damage(_power:int, _casterchar) :
	return 0
	
static func get_damage_roll(_power : int, _casterchar) :
	return 0

static func get_accuracy(_casterchar, _power : int) :
	return -7777777 #= infinite wiith resist==0 anyway

static func get_sp_cost(_power : int, _casterchar) :
	return 35*_power

static func get_target_number(_power : int, _casterchar) :
	return 1

static func get_aoe(_power : int, _casterchar) :
	return 'b5'

static func add_traits_to_target(_castercrea, c,_power) :
	var duration = 0
	for i in range(_power) :
		duration += 5 + randi()% 6
	var traitscript = load('res://shared_assets/traits/'+'t_speedy.gd')
	c.add_trait(traitscript,[duration])
