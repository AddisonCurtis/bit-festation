// You can write your code in this editor
instance_destroy(obj_cursor);
var cursor = instance_create_layer(x-16, y, "Instances", obj_cursor);
with(cursor){
	cursor.dir = dir.left;
	
}