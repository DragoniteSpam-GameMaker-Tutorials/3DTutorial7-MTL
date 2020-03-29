var matrix = matrix_build(x, y, z, 0, 0, 180, 1, 1, -1);
matrix_set(matrix_world, matrix);
gpu_set_cullmode(cull_clockwise);

vertex_submit(model, pr_trianglelist, -1);

gpu_set_cullmode(cull_noculling);
matrix_set(matrix_world, matrix_build_identity());