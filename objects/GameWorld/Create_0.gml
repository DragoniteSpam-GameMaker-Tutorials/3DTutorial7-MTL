vertex_format_begin();

vertex_format_add_position_3d();
vertex_format_add_normal();
vertex_format_add_color();
vertex_format_add_texcoord();

format = vertex_format_end();

draw_set_lighting(true);
draw_light_define_point(1, 0, 0, 0, room_width, c_white);
draw_light_enable(1, true);
// here's a second light on the other side of the ship, so you
// can see both sides of it illuminated
draw_light_define_point(2, 600, 600, -200, room_width, c_white);
draw_light_enable(2, true);

// It's generally a good idea to turn backface culling on, but
// depending on the culling direction, you may see tile layers
// vanish; instead, I'll only be enabling this in each GameObject's
// Draw event
//gpu_set_cullmode(cull_clockwise);

gpu_set_fog(true, c_red, 100, 1000);

var barrel = instance_create_depth(100, 100, 0, GameObject);
barrel.model = load_model("barrel.d3d");
barrel.z = -32;

var merry = instance_create_depth(500, 500, 0, GameObject);
merry.model = load_obj("merry_mtl.obj", "merry_mtl.mtl");
merry.z = -32;