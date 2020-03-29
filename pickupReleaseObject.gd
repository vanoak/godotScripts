var has_object

func pickup(node):
	var n = get_node(node)
	n.get_parent().remove_child(n)
	camera.add_child(n)
	n.transform.origin = get_node("Rotation_Helper/Camera/dropbox").transform.origin
	
func release(node):
	var n = get_node(node)
	camera.remove_child(n)
	get_tree().get_root().get_node("Spatial").add_child(n)
	var drop = get_node("Rotation_Helper/Camera/dropbox").get_global_transform()[3]
	get_node("../"+objectNome).transform.origin  = drop
