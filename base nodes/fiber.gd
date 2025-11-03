extends Line2D
var source=null
var target=null

func _process(_delta):
	if source!=null and target!=null:
		$Light3D.points[self.points.size()-1]=self.points[self.points.size()-1]
		if self.points[self.points.size()-1].length()!=(source.global_position-target.global_position).length():
			self.points[self.points.size()-1]=(source.global_position-target.global_position)

func _ready():
	if source!=null and target!=null:
		$Light3D.visible=true
	for p in self.points:
		$Light3D.add_point(p)
		
func SetColor(state):
	if state:
		$Light3D.set_default_color(Color("#ffff8d"))
	else:
		$Light3D.set_default_color(Color("#141414"))
