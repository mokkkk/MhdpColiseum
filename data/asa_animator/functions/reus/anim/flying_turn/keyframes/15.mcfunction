function #asa_matrix:get_parent_pos
data modify storage asa_temp: Temp.Rotation set from entity @s Rotation
function #asa_matrix:matrix_world
data modify storage asa_temp: Data[0].Rotation set from storage asa_temp: Temp.Rotation
data modify storage asa_temp: Data[0].Pose.Head set value [54.2f,0f,0f]
scoreboard players set #asa_child_pos_x AsaMatrix 0
scoreboard players set #asa_child_pos_y AsaMatrix 3109
scoreboard players set #asa_child_pos_z AsaMatrix 3545
function #asa_matrix:rotate_world
function #asa_matrix:get_child_pos
execute store result storage asa_temp: Data[0].Pos[0] double 0.001 run scoreboard players get #asa_child_pos_x AsaMatrix
execute store result storage asa_temp: Data[0].Pos[1] double 0.001 run scoreboard players get #asa_child_pos_y AsaMatrix
execute store result storage asa_temp: Data[0].Pos[2] double 0.001 run scoreboard players get #asa_child_pos_z AsaMatrix
data modify storage asa_temp: Data[1].Rotation set from storage asa_temp: Temp.Rotation
data modify storage asa_temp: Data[1].Pose.Head set value [61f,0f,0f]
scoreboard players set #asa_child_pos_x AsaMatrix 0
scoreboard players set #asa_child_pos_y AsaMatrix 2791
scoreboard players set #asa_child_pos_z AsaMatrix 3873
function #asa_matrix:rotate_world
function #asa_matrix:get_child_pos
execute store result storage asa_temp: Data[1].Pos[0] double 0.001 run scoreboard players get #asa_child_pos_x AsaMatrix
execute store result storage asa_temp: Data[1].Pos[1] double 0.001 run scoreboard players get #asa_child_pos_y AsaMatrix
execute store result storage asa_temp: Data[1].Pos[2] double 0.001 run scoreboard players get #asa_child_pos_z AsaMatrix
data modify storage asa_temp: Data[2].Rotation set from storage asa_temp: Temp.Rotation
data modify storage asa_temp: Data[2].Pose.Head set value [24.2f,0f,0f]
scoreboard players set #asa_child_pos_x AsaMatrix 0
scoreboard players set #asa_child_pos_y AsaMatrix 3467
scoreboard players set #asa_child_pos_z AsaMatrix 2993
function #asa_matrix:rotate_world
function #asa_matrix:get_child_pos
execute store result storage asa_temp: Data[2].Pos[0] double 0.001 run scoreboard players get #asa_child_pos_x AsaMatrix
execute store result storage asa_temp: Data[2].Pos[1] double 0.001 run scoreboard players get #asa_child_pos_y AsaMatrix
execute store result storage asa_temp: Data[2].Pos[2] double 0.001 run scoreboard players get #asa_child_pos_z AsaMatrix
data modify storage asa_temp: Data[3].Rotation set from storage asa_temp: Temp.Rotation
data modify storage asa_temp: Data[3].Pose.Head set value [0.8000011f,0f,0f]
scoreboard players set #asa_child_pos_x AsaMatrix 0
scoreboard players set #asa_child_pos_y AsaMatrix 3426
scoreboard players set #asa_child_pos_z AsaMatrix 2343
function #asa_matrix:rotate_world
function #asa_matrix:get_child_pos
execute store result storage asa_temp: Data[3].Pos[0] double 0.001 run scoreboard players get #asa_child_pos_x AsaMatrix
execute store result storage asa_temp: Data[3].Pos[1] double 0.001 run scoreboard players get #asa_child_pos_y AsaMatrix
execute store result storage asa_temp: Data[3].Pos[2] double 0.001 run scoreboard players get #asa_child_pos_z AsaMatrix
data modify storage asa_temp: Data[4].Rotation set from storage asa_temp: Temp.Rotation
data modify storage asa_temp: Data[4].Pose.Head set value [-16.6f,0f,0f]
scoreboard players set #asa_child_pos_x AsaMatrix 0
scoreboard players set #asa_child_pos_y AsaMatrix 3288
scoreboard players set #asa_child_pos_z AsaMatrix 1706
function #asa_matrix:rotate_world
function #asa_matrix:get_child_pos
execute store result storage asa_temp: Data[4].Pos[0] double 0.001 run scoreboard players get #asa_child_pos_x AsaMatrix
execute store result storage asa_temp: Data[4].Pos[1] double 0.001 run scoreboard players get #asa_child_pos_y AsaMatrix
execute store result storage asa_temp: Data[4].Pos[2] double 0.001 run scoreboard players get #asa_child_pos_z AsaMatrix
data modify storage asa_temp: Data[5].Rotation set from storage asa_temp: Temp.Rotation
data modify storage asa_temp: Data[5].Pose.Head set value [-34f,0f,0f]
scoreboard players set #asa_child_pos_x AsaMatrix 0
scoreboard players set #asa_child_pos_y AsaMatrix 2532
scoreboard players set #asa_child_pos_z AsaMatrix 406
function #asa_matrix:rotate_world
function #asa_matrix:get_child_pos
execute store result storage asa_temp: Data[5].Pos[0] double 0.001 run scoreboard players get #asa_child_pos_x AsaMatrix
execute store result storage asa_temp: Data[5].Pos[1] double 0.001 run scoreboard players get #asa_child_pos_y AsaMatrix
execute store result storage asa_temp: Data[5].Pos[2] double 0.001 run scoreboard players get #asa_child_pos_z AsaMatrix
data modify storage asa_temp: Data[6].Rotation set from storage asa_temp: Temp.Rotation
data modify storage asa_temp: Data[6].Pose.Head set value [-60f,0f,0f]
scoreboard players set #asa_child_pos_x AsaMatrix 0
scoreboard players set #asa_child_pos_y AsaMatrix 1890
scoreboard players set #asa_child_pos_z AsaMatrix -81
function #asa_matrix:rotate_world
function #asa_matrix:get_child_pos
execute store result storage asa_temp: Data[6].Pos[0] double 0.001 run scoreboard players get #asa_child_pos_x AsaMatrix
execute store result storage asa_temp: Data[6].Pos[1] double 0.001 run scoreboard players get #asa_child_pos_y AsaMatrix
execute store result storage asa_temp: Data[6].Pos[2] double 0.001 run scoreboard players get #asa_child_pos_z AsaMatrix
data modify storage asa_temp: Data[7].Rotation set from storage asa_temp: Temp.Rotation
data modify storage asa_temp: Data[7].Pose.Head set value [-7f,0f,0f]
scoreboard players set #asa_child_pos_x AsaMatrix 800
scoreboard players set #asa_child_pos_y AsaMatrix 1540
scoreboard players set #asa_child_pos_z AsaMatrix 526
function #asa_matrix:rotate_world
function #asa_matrix:get_child_pos
execute store result storage asa_temp: Data[7].Pos[0] double 0.001 run scoreboard players get #asa_child_pos_x AsaMatrix
execute store result storage asa_temp: Data[7].Pos[1] double 0.001 run scoreboard players get #asa_child_pos_y AsaMatrix
execute store result storage asa_temp: Data[7].Pos[2] double 0.001 run scoreboard players get #asa_child_pos_z AsaMatrix
data modify storage asa_temp: Data[8].Rotation set from storage asa_temp: Temp.Rotation
data modify storage asa_temp: Data[8].Pose.Head set value [-7f,0f,0f]
scoreboard players set #asa_child_pos_x AsaMatrix -800
scoreboard players set #asa_child_pos_y AsaMatrix 1540
scoreboard players set #asa_child_pos_z AsaMatrix 526
function #asa_matrix:rotate_world
function #asa_matrix:get_child_pos
execute store result storage asa_temp: Data[8].Pos[0] double 0.001 run scoreboard players get #asa_child_pos_x AsaMatrix
execute store result storage asa_temp: Data[8].Pos[1] double 0.001 run scoreboard players get #asa_child_pos_y AsaMatrix
execute store result storage asa_temp: Data[8].Pos[2] double 0.001 run scoreboard players get #asa_child_pos_z AsaMatrix
data modify storage asa_temp: Data[9].Rotation set from storage asa_temp: Temp.Rotation
data modify storage asa_temp: Data[9].Pose.Head set value [65f,0f,0f]
scoreboard players set #asa_child_pos_x AsaMatrix 800
scoreboard players set #asa_child_pos_y AsaMatrix 745
scoreboard players set #asa_child_pos_z AsaMatrix 623
function #asa_matrix:rotate_world
function #asa_matrix:get_child_pos
execute store result storage asa_temp: Data[9].Pos[0] double 0.001 run scoreboard players get #asa_child_pos_x AsaMatrix
execute store result storage asa_temp: Data[9].Pos[1] double 0.001 run scoreboard players get #asa_child_pos_y AsaMatrix
execute store result storage asa_temp: Data[9].Pos[2] double 0.001 run scoreboard players get #asa_child_pos_z AsaMatrix
data modify storage asa_temp: Data[10].Rotation set from storage asa_temp: Temp.Rotation
data modify storage asa_temp: Data[10].Pose.Head set value [69f,0f,0f]
scoreboard players set #asa_child_pos_x AsaMatrix -800
scoreboard players set #asa_child_pos_y AsaMatrix 745
scoreboard players set #asa_child_pos_z AsaMatrix 623
function #asa_matrix:rotate_world
function #asa_matrix:get_child_pos
execute store result storage asa_temp: Data[10].Pos[0] double 0.001 run scoreboard players get #asa_child_pos_x AsaMatrix
execute store result storage asa_temp: Data[10].Pos[1] double 0.001 run scoreboard players get #asa_child_pos_y AsaMatrix
execute store result storage asa_temp: Data[10].Pos[2] double 0.001 run scoreboard players get #asa_child_pos_z AsaMatrix
data modify storage asa_temp: Data[11].Rotation set from storage asa_temp: Temp.Rotation
data modify storage asa_temp: Data[11].Pose.Head set value [44f,0f,0f]
scoreboard players set #asa_child_pos_x AsaMatrix 800
scoreboard players set #asa_child_pos_y AsaMatrix 1247
scoreboard players set #asa_child_pos_z AsaMatrix 279
function #asa_matrix:rotate_world
function #asa_matrix:get_child_pos
execute store result storage asa_temp: Data[11].Pos[0] double 0.001 run scoreboard players get #asa_child_pos_x AsaMatrix
execute store result storage asa_temp: Data[11].Pos[1] double 0.001 run scoreboard players get #asa_child_pos_y AsaMatrix
execute store result storage asa_temp: Data[11].Pos[2] double 0.001 run scoreboard players get #asa_child_pos_z AsaMatrix
data modify storage asa_temp: Data[12].Rotation set from storage asa_temp: Temp.Rotation
data modify storage asa_temp: Data[12].Pose.Head set value [40f,0f,0f]
scoreboard players set #asa_child_pos_x AsaMatrix -800
scoreboard players set #asa_child_pos_y AsaMatrix 1270
scoreboard players set #asa_child_pos_z AsaMatrix 315
function #asa_matrix:rotate_world
function #asa_matrix:get_child_pos
execute store result storage asa_temp: Data[12].Pos[0] double 0.001 run scoreboard players get #asa_child_pos_x AsaMatrix
execute store result storage asa_temp: Data[12].Pos[1] double 0.001 run scoreboard players get #asa_child_pos_y AsaMatrix
execute store result storage asa_temp: Data[12].Pos[2] double 0.001 run scoreboard players get #asa_child_pos_z AsaMatrix
data modify storage asa_temp: Data[13].Rotation set from storage asa_temp: Temp.Rotation
data modify storage asa_temp: Data[13].Pose.Head set value [-28.2f,0f,0f]
scoreboard players set #asa_child_pos_x AsaMatrix 0
scoreboard players set #asa_child_pos_y AsaMatrix 714
scoreboard players set #asa_child_pos_z AsaMatrix -644
function #asa_matrix:rotate_world
function #asa_matrix:get_child_pos
execute store result storage asa_temp: Data[13].Pos[0] double 0.001 run scoreboard players get #asa_child_pos_x AsaMatrix
execute store result storage asa_temp: Data[13].Pos[1] double 0.001 run scoreboard players get #asa_child_pos_y AsaMatrix
execute store result storage asa_temp: Data[13].Pos[2] double 0.001 run scoreboard players get #asa_child_pos_z AsaMatrix
data modify storage asa_temp: Data[14].Rotation set from storage asa_temp: Temp.Rotation
data modify storage asa_temp: Data[14].Pose.Head set value [3.599998f,0f,0f]
scoreboard players set #asa_child_pos_x AsaMatrix 0
scoreboard players set #asa_child_pos_y AsaMatrix 5
scoreboard players set #asa_child_pos_z AsaMatrix -1966
function #asa_matrix:rotate_world
function #asa_matrix:get_child_pos
execute store result storage asa_temp: Data[14].Pos[0] double 0.001 run scoreboard players get #asa_child_pos_x AsaMatrix
execute store result storage asa_temp: Data[14].Pos[1] double 0.001 run scoreboard players get #asa_child_pos_y AsaMatrix
execute store result storage asa_temp: Data[14].Pos[2] double 0.001 run scoreboard players get #asa_child_pos_z AsaMatrix
data modify storage asa_temp: Data[15].Rotation set from storage asa_temp: Temp.Rotation
data modify storage asa_temp: Data[15].Pose.Head set value [35.4f,0f,0f]
scoreboard players set #asa_child_pos_x AsaMatrix 0
scoreboard players set #asa_child_pos_y AsaMatrix 118
scoreboard players set #asa_child_pos_z AsaMatrix -3762
function #asa_matrix:rotate_world
function #asa_matrix:get_child_pos
execute store result storage asa_temp: Data[15].Pos[0] double 0.001 run scoreboard players get #asa_child_pos_x AsaMatrix
execute store result storage asa_temp: Data[15].Pos[1] double 0.001 run scoreboard players get #asa_child_pos_y AsaMatrix
execute store result storage asa_temp: Data[15].Pos[2] double 0.001 run scoreboard players get #asa_child_pos_z AsaMatrix
data modify storage asa_temp: Data[16].Rotation set from storage asa_temp: Temp.Rotation
data modify storage asa_temp: Data[16].Pose.Head set value [56f,8f,10f]
scoreboard players set #asa_child_pos_x AsaMatrix 800
scoreboard players set #asa_child_pos_y AsaMatrix 3036
scoreboard players set #asa_child_pos_z AsaMatrix 1152
function #asa_matrix:rotate_world
function #asa_matrix:get_child_pos
execute store result storage asa_temp: Data[16].Pos[0] double 0.001 run scoreboard players get #asa_child_pos_x AsaMatrix
execute store result storage asa_temp: Data[16].Pos[1] double 0.001 run scoreboard players get #asa_child_pos_y AsaMatrix
execute store result storage asa_temp: Data[16].Pos[2] double 0.001 run scoreboard players get #asa_child_pos_z AsaMatrix
data modify storage asa_temp: Data[17].Rotation set from storage asa_temp: Temp.Rotation
data modify storage asa_temp: Data[17].Pose.Head set value [56f,-8f,-10f]
scoreboard players set #asa_child_pos_x AsaMatrix -800
scoreboard players set #asa_child_pos_y AsaMatrix 3036
scoreboard players set #asa_child_pos_z AsaMatrix 1152
function #asa_matrix:rotate_world
function #asa_matrix:get_child_pos
execute store result storage asa_temp: Data[17].Pos[0] double 0.001 run scoreboard players get #asa_child_pos_x AsaMatrix
execute store result storage asa_temp: Data[17].Pos[1] double 0.001 run scoreboard players get #asa_child_pos_y AsaMatrix
execute store result storage asa_temp: Data[17].Pos[2] double 0.001 run scoreboard players get #asa_child_pos_z AsaMatrix
data modify storage asa_temp: Data[18].Rotation set from storage asa_temp: Temp.Rotation
data modify storage asa_temp: Data[18].Pose.Head set value [64.8f,13.8f,21f]
scoreboard players set #asa_child_pos_x AsaMatrix 2700
scoreboard players set #asa_child_pos_y AsaMatrix 2740
scoreboard players set #asa_child_pos_z AsaMatrix 1481
function #asa_matrix:rotate_world
function #asa_matrix:get_child_pos
execute store result storage asa_temp: Data[18].Pos[0] double 0.001 run scoreboard players get #asa_child_pos_x AsaMatrix
execute store result storage asa_temp: Data[18].Pos[1] double 0.001 run scoreboard players get #asa_child_pos_y AsaMatrix
execute store result storage asa_temp: Data[18].Pos[2] double 0.001 run scoreboard players get #asa_child_pos_z AsaMatrix
data modify storage asa_temp: Data[19].Rotation set from storage asa_temp: Temp.Rotation
data modify storage asa_temp: Data[19].Pose.Head set value [64.8f,-13.8f,-21f]
scoreboard players set #asa_child_pos_x AsaMatrix -2701
scoreboard players set #asa_child_pos_y AsaMatrix 2740
scoreboard players set #asa_child_pos_z AsaMatrix 1481
function #asa_matrix:rotate_world
function #asa_matrix:get_child_pos
execute store result storage asa_temp: Data[19].Pos[0] double 0.001 run scoreboard players get #asa_child_pos_x AsaMatrix
execute store result storage asa_temp: Data[19].Pos[1] double 0.001 run scoreboard players get #asa_child_pos_y AsaMatrix
execute store result storage asa_temp: Data[19].Pos[2] double 0.001 run scoreboard players get #asa_child_pos_z AsaMatrix
data modify storage asa_temp: Data[20].Rotation set from storage asa_temp: Temp.Rotation
data modify storage asa_temp: Data[20].Pose.Head set value [64.8f,13.8f,21f]
scoreboard players set #asa_child_pos_x AsaMatrix 3347
scoreboard players set #asa_child_pos_y AsaMatrix 3222
scoreboard players set #asa_child_pos_z AsaMatrix 3078
function #asa_matrix:rotate_world
function #asa_matrix:get_child_pos
execute store result storage asa_temp: Data[20].Pos[0] double 0.001 run scoreboard players get #asa_child_pos_x AsaMatrix
execute store result storage asa_temp: Data[20].Pos[1] double 0.001 run scoreboard players get #asa_child_pos_y AsaMatrix
execute store result storage asa_temp: Data[20].Pos[2] double 0.001 run scoreboard players get #asa_child_pos_z AsaMatrix
data modify storage asa_temp: Data[21].Rotation set from storage asa_temp: Temp.Rotation
data modify storage asa_temp: Data[21].Pose.Head set value [64.8f,-13.8f,-21f]
scoreboard players set #asa_child_pos_x AsaMatrix -3348
scoreboard players set #asa_child_pos_y AsaMatrix 3222
scoreboard players set #asa_child_pos_z AsaMatrix 3078
function #asa_matrix:rotate_world
function #asa_matrix:get_child_pos
execute store result storage asa_temp: Data[21].Pos[0] double 0.001 run scoreboard players get #asa_child_pos_x AsaMatrix
execute store result storage asa_temp: Data[21].Pos[1] double 0.001 run scoreboard players get #asa_child_pos_y AsaMatrix
execute store result storage asa_temp: Data[21].Pos[2] double 0.001 run scoreboard players get #asa_child_pos_z AsaMatrix
