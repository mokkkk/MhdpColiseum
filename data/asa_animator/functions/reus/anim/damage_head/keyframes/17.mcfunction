function #asa_matrix:get_parent_pos
data modify storage asa_temp: Temp.Rotation set from entity @s Rotation
function #asa_matrix:matrix_world
data modify storage asa_temp: Data[0].Rotation set from storage asa_temp: Temp.Rotation
data modify storage asa_temp: Data[0].Pose.Head set value [15.35714f,47.64286f,-3.571428f]
scoreboard players set #asa_child_pos_x AsaMatrix -2193
scoreboard players set #asa_child_pos_y AsaMatrix 816
scoreboard players set #asa_child_pos_z AsaMatrix -260
function #asa_matrix:rotate_world
function #asa_matrix:get_child_pos
execute store result storage asa_temp: Data[0].Pos[0] double 0.001 run scoreboard players get #asa_child_pos_x AsaMatrix
execute store result storage asa_temp: Data[0].Pos[1] double 0.001 run scoreboard players get #asa_child_pos_y AsaMatrix
execute store result storage asa_temp: Data[0].Pos[2] double 0.001 run scoreboard players get #asa_child_pos_z AsaMatrix
data modify storage asa_temp: Data[1].Rotation set from storage asa_temp: Temp.Rotation
data modify storage asa_temp: Data[1].Pose.Head set value [30.21429f,47.64286f,-3.571428f]
scoreboard players set #asa_child_pos_x AsaMatrix -2526
scoreboard players set #asa_child_pos_y AsaMatrix 754
scoreboard players set #asa_child_pos_z AsaMatrix 47
function #asa_matrix:rotate_world
function #asa_matrix:get_child_pos
execute store result storage asa_temp: Data[1].Pos[0] double 0.001 run scoreboard players get #asa_child_pos_x AsaMatrix
execute store result storage asa_temp: Data[1].Pos[1] double 0.001 run scoreboard players get #asa_child_pos_y AsaMatrix
execute store result storage asa_temp: Data[1].Pos[2] double 0.001 run scoreboard players get #asa_child_pos_z AsaMatrix
data modify storage asa_temp: Data[2].Rotation set from storage asa_temp: Temp.Rotation
data modify storage asa_temp: Data[2].Pose.Head set value [11.07143f,43.14286f,-3.571428f]
scoreboard players set #asa_child_pos_x AsaMatrix -1784
scoreboard players set #asa_child_pos_y AsaMatrix 1065
scoreboard players set #asa_child_pos_z AsaMatrix -711
function #asa_matrix:rotate_world
function #asa_matrix:get_child_pos
execute store result storage asa_temp: Data[2].Pos[0] double 0.001 run scoreboard players get #asa_child_pos_x AsaMatrix
execute store result storage asa_temp: Data[2].Pos[1] double 0.001 run scoreboard players get #asa_child_pos_y AsaMatrix
execute store result storage asa_temp: Data[2].Pos[2] double 0.001 run scoreboard players get #asa_child_pos_z AsaMatrix
data modify storage asa_temp: Data[3].Rotation set from storage asa_temp: Temp.Rotation
data modify storage asa_temp: Data[3].Pose.Head set value [9.642858f,38.64286f,-3.571428f]
scoreboard players set #asa_child_pos_x AsaMatrix -1384
scoreboard players set #asa_child_pos_y AsaMatrix 1150
scoreboard players set #asa_child_pos_z AsaMatrix -1218
function #asa_matrix:rotate_world
function #asa_matrix:get_child_pos
execute store result storage asa_temp: Data[3].Pos[0] double 0.001 run scoreboard players get #asa_child_pos_x AsaMatrix
execute store result storage asa_temp: Data[3].Pos[1] double 0.001 run scoreboard players get #asa_child_pos_y AsaMatrix
execute store result storage asa_temp: Data[3].Pos[2] double 0.001 run scoreboard players get #asa_child_pos_z AsaMatrix
data modify storage asa_temp: Data[4].Rotation set from storage asa_temp: Temp.Rotation
data modify storage asa_temp: Data[4].Pose.Head set value [-6.071428f,34.14286f,-3.571428f]
scoreboard players set #asa_child_pos_x AsaMatrix -1017
scoreboard players set #asa_child_pos_y AsaMatrix 1154
scoreboard players set #asa_child_pos_z AsaMatrix -1758
function #asa_matrix:rotate_world
function #asa_matrix:get_child_pos
execute store result storage asa_temp: Data[4].Pos[0] double 0.001 run scoreboard players get #asa_child_pos_x AsaMatrix
execute store result storage asa_temp: Data[4].Pos[1] double 0.001 run scoreboard players get #asa_child_pos_y AsaMatrix
execute store result storage asa_temp: Data[4].Pos[2] double 0.001 run scoreboard players get #asa_child_pos_z AsaMatrix
data modify storage asa_temp: Data[5].Rotation set from storage asa_temp: Temp.Rotation
data modify storage asa_temp: Data[5].Pose.Head set value [-4.285714f,29.64286f,-3.571428f]
scoreboard players set #asa_child_pos_x AsaMatrix -274
scoreboard players set #asa_child_pos_y AsaMatrix 1188
scoreboard players set #asa_child_pos_z AsaMatrix -3064
function #asa_matrix:rotate_world
function #asa_matrix:get_child_pos
execute store result storage asa_temp: Data[5].Pos[0] double 0.001 run scoreboard players get #asa_child_pos_x AsaMatrix
execute store result storage asa_temp: Data[5].Pos[1] double 0.001 run scoreboard players get #asa_child_pos_y AsaMatrix
execute store result storage asa_temp: Data[5].Pos[2] double 0.001 run scoreboard players get #asa_child_pos_z AsaMatrix
data modify storage asa_temp: Data[6].Rotation set from storage asa_temp: Temp.Rotation
data modify storage asa_temp: Data[6].Pose.Head set value [-7.142857f,20f,6.428572f]
scoreboard players set #asa_child_pos_x AsaMatrix 0
scoreboard players set #asa_child_pos_y AsaMatrix 1157
scoreboard players set #asa_child_pos_z AsaMatrix -3822
function #asa_matrix:rotate_world
function #asa_matrix:get_child_pos
execute store result storage asa_temp: Data[6].Pos[0] double 0.001 run scoreboard players get #asa_child_pos_x AsaMatrix
execute store result storage asa_temp: Data[6].Pos[1] double 0.001 run scoreboard players get #asa_child_pos_y AsaMatrix
execute store result storage asa_temp: Data[6].Pos[2] double 0.001 run scoreboard players get #asa_child_pos_z AsaMatrix
data modify storage asa_temp: Data[7].Rotation set from storage asa_temp: Temp.Rotation
data modify storage asa_temp: Data[7].Pose.Head set value [-27.14286f,5f,0f]
scoreboard players set #asa_child_pos_x AsaMatrix 639
scoreboard players set #asa_child_pos_y AsaMatrix 386
scoreboard players set #asa_child_pos_z AsaMatrix -3467
function #asa_matrix:rotate_world
function #asa_matrix:get_child_pos
execute store result storage asa_temp: Data[7].Pos[0] double 0.001 run scoreboard players get #asa_child_pos_x AsaMatrix
execute store result storage asa_temp: Data[7].Pos[1] double 0.001 run scoreboard players get #asa_child_pos_y AsaMatrix
execute store result storage asa_temp: Data[7].Pos[2] double 0.001 run scoreboard players get #asa_child_pos_z AsaMatrix
data modify storage asa_temp: Data[8].Rotation set from storage asa_temp: Temp.Rotation
data modify storage asa_temp: Data[8].Pose.Head set value [-12.85714f,32.5f,0f]
scoreboard players set #asa_child_pos_x AsaMatrix -855
scoreboard players set #asa_child_pos_y AsaMatrix 554
scoreboard players set #asa_child_pos_z AsaMatrix -4014
function #asa_matrix:rotate_world
function #asa_matrix:get_child_pos
execute store result storage asa_temp: Data[8].Pos[0] double 0.001 run scoreboard players get #asa_child_pos_x AsaMatrix
execute store result storage asa_temp: Data[8].Pos[1] double 0.001 run scoreboard players get #asa_child_pos_y AsaMatrix
execute store result storage asa_temp: Data[8].Pos[2] double 0.001 run scoreboard players get #asa_child_pos_z AsaMatrix
data modify storage asa_temp: Data[9].Rotation set from storage asa_temp: Temp.Rotation
data modify storage asa_temp: Data[9].Pose.Head set value [22.5f,5f,0f]
scoreboard players set #asa_child_pos_x AsaMatrix 607
scoreboard players set #asa_child_pos_y AsaMatrix -326
scoreboard players set #asa_child_pos_z AsaMatrix -3103
function #asa_matrix:rotate_world
function #asa_matrix:get_child_pos
execute store result storage asa_temp: Data[9].Pos[0] double 0.001 run scoreboard players get #asa_child_pos_x AsaMatrix
execute store result storage asa_temp: Data[9].Pos[1] double 0.001 run scoreboard players get #asa_child_pos_y AsaMatrix
execute store result storage asa_temp: Data[9].Pos[2] double 0.001 run scoreboard players get #asa_child_pos_z AsaMatrix
data modify storage asa_temp: Data[10].Rotation set from storage asa_temp: Temp.Rotation
data modify storage asa_temp: Data[10].Pose.Head set value [9.642857f,32.5f,0f]
scoreboard players set #asa_child_pos_x AsaMatrix -951
scoreboard players set #asa_child_pos_y AsaMatrix -226
scoreboard players set #asa_child_pos_z AsaMatrix -3864
function #asa_matrix:rotate_world
function #asa_matrix:get_child_pos
execute store result storage asa_temp: Data[10].Pos[0] double 0.001 run scoreboard players get #asa_child_pos_x AsaMatrix
execute store result storage asa_temp: Data[10].Pos[1] double 0.001 run scoreboard players get #asa_child_pos_y AsaMatrix
execute store result storage asa_temp: Data[10].Pos[2] double 0.001 run scoreboard players get #asa_child_pos_z AsaMatrix
data modify storage asa_temp: Data[11].Rotation set from storage asa_temp: Temp.Rotation
data modify storage asa_temp: Data[11].Pose.Head set value [-3.928572f,5f,0f]
scoreboard players set #asa_child_pos_x AsaMatrix 659
scoreboard players set #asa_child_pos_y AsaMatrix -189
scoreboard players set #asa_child_pos_z AsaMatrix -3693
function #asa_matrix:rotate_world
function #asa_matrix:get_child_pos
execute store result storage asa_temp: Data[11].Pos[0] double 0.001 run scoreboard players get #asa_child_pos_x AsaMatrix
execute store result storage asa_temp: Data[11].Pos[1] double 0.001 run scoreboard players get #asa_child_pos_y AsaMatrix
execute store result storage asa_temp: Data[11].Pos[2] double 0.001 run scoreboard players get #asa_child_pos_z AsaMatrix
data modify storage asa_temp: Data[12].Rotation set from storage asa_temp: Temp.Rotation
data modify storage asa_temp: Data[12].Pose.Head set value [3.214285f,32.5f,0f]
scoreboard players set #asa_child_pos_x AsaMatrix -624
scoreboard players set #asa_child_pos_y AsaMatrix -224
scoreboard players set #asa_child_pos_z AsaMatrix -4377
function #asa_matrix:rotate_world
function #asa_matrix:get_child_pos
execute store result storage asa_temp: Data[12].Pos[0] double 0.001 run scoreboard players get #asa_child_pos_x AsaMatrix
execute store result storage asa_temp: Data[12].Pos[1] double 0.001 run scoreboard players get #asa_child_pos_y AsaMatrix
execute store result storage asa_temp: Data[12].Pos[2] double 0.001 run scoreboard players get #asa_child_pos_z AsaMatrix
data modify storage asa_temp: Data[13].Rotation set from storage asa_temp: Temp.Rotation
data modify storage asa_temp: Data[13].Pose.Head set value [-18.92857f,13.57143f,6.428572f]
scoreboard players set #asa_child_pos_x AsaMatrix 404
scoreboard players set #asa_child_pos_y AsaMatrix 848
scoreboard players set #asa_child_pos_z AsaMatrix -5022
function #asa_matrix:rotate_world
function #asa_matrix:get_child_pos
execute store result storage asa_temp: Data[13].Pos[0] double 0.001 run scoreboard players get #asa_child_pos_x AsaMatrix
execute store result storage asa_temp: Data[13].Pos[1] double 0.001 run scoreboard players get #asa_child_pos_y AsaMatrix
execute store result storage asa_temp: Data[13].Pos[2] double 0.001 run scoreboard players get #asa_child_pos_z AsaMatrix
data modify storage asa_temp: Data[14].Rotation set from storage asa_temp: Temp.Rotation
data modify storage asa_temp: Data[14].Pose.Head set value [-18.57143f,7.142857f,6.428572f]
scoreboard players set #asa_child_pos_x AsaMatrix 681
scoreboard players set #asa_child_pos_y AsaMatrix 328
scoreboard players set #asa_child_pos_z AsaMatrix -6402
function #asa_matrix:rotate_world
function #asa_matrix:get_child_pos
execute store result storage asa_temp: Data[14].Pos[0] double 0.001 run scoreboard players get #asa_child_pos_x AsaMatrix
execute store result storage asa_temp: Data[14].Pos[1] double 0.001 run scoreboard players get #asa_child_pos_y AsaMatrix
execute store result storage asa_temp: Data[14].Pos[2] double 0.001 run scoreboard players get #asa_child_pos_z AsaMatrix
data modify storage asa_temp: Data[15].Rotation set from storage asa_temp: Temp.Rotation
data modify storage asa_temp: Data[15].Pose.Head set value [-18.21428f,0.7142849f,6.428572f]
scoreboard players set #asa_child_pos_x AsaMatrix 827
scoreboard players set #asa_child_pos_y AsaMatrix -266
scoreboard players set #asa_child_pos_z AsaMatrix -8095
function #asa_matrix:rotate_world
function #asa_matrix:get_child_pos
execute store result storage asa_temp: Data[15].Pos[0] double 0.001 run scoreboard players get #asa_child_pos_x AsaMatrix
execute store result storage asa_temp: Data[15].Pos[1] double 0.001 run scoreboard players get #asa_child_pos_y AsaMatrix
execute store result storage asa_temp: Data[15].Pos[2] double 0.001 run scoreboard players get #asa_child_pos_z AsaMatrix
data modify storage asa_temp: Data[16].Rotation set from storage asa_temp: Temp.Rotation
data modify storage asa_temp: Data[16].Pose.Head set value [71.42857f,29.64286f,-12.85714f]
scoreboard players set #asa_child_pos_x AsaMatrix -28
scoreboard players set #asa_child_pos_y AsaMatrix 1271
scoreboard players set #asa_child_pos_z AsaMatrix -1889
function #asa_matrix:rotate_world
function #asa_matrix:get_child_pos
execute store result storage asa_temp: Data[16].Pos[0] double 0.001 run scoreboard players get #asa_child_pos_x AsaMatrix
execute store result storage asa_temp: Data[16].Pos[1] double 0.001 run scoreboard players get #asa_child_pos_y AsaMatrix
execute store result storage asa_temp: Data[16].Pos[2] double 0.001 run scoreboard players get #asa_child_pos_z AsaMatrix
data modify storage asa_temp: Data[17].Rotation set from storage asa_temp: Temp.Rotation
data modify storage asa_temp: Data[17].Pose.Head set value [71.42857f,29.64286f,5.714286f]
scoreboard players set #asa_child_pos_x AsaMatrix -1416
scoreboard players set #asa_child_pos_y AsaMatrix 1184
scoreboard players set #asa_child_pos_z AsaMatrix -2680
function #asa_matrix:rotate_world
function #asa_matrix:get_child_pos
execute store result storage asa_temp: Data[17].Pos[0] double 0.001 run scoreboard players get #asa_child_pos_x AsaMatrix
execute store result storage asa_temp: Data[17].Pos[1] double 0.001 run scoreboard players get #asa_child_pos_y AsaMatrix
execute store result storage asa_temp: Data[17].Pos[2] double 0.001 run scoreboard players get #asa_child_pos_z AsaMatrix
data modify storage asa_temp: Data[18].Rotation set from storage asa_temp: Temp.Rotation
data modify storage asa_temp: Data[18].Pose.Head set value [71.42857f,29.64286f,1.907349E-06f]
scoreboard players set #asa_child_pos_x AsaMatrix 1588
scoreboard players set #asa_child_pos_y AsaMatrix 1662
scoreboard players set #asa_child_pos_z AsaMatrix -866
function #asa_matrix:rotate_world
function #asa_matrix:get_child_pos
execute store result storage asa_temp: Data[18].Pos[0] double 0.001 run scoreboard players get #asa_child_pos_x AsaMatrix
execute store result storage asa_temp: Data[18].Pos[1] double 0.001 run scoreboard players get #asa_child_pos_y AsaMatrix
execute store result storage asa_temp: Data[18].Pos[2] double 0.001 run scoreboard players get #asa_child_pos_z AsaMatrix
data modify storage asa_temp: Data[19].Rotation set from storage asa_temp: Temp.Rotation
data modify storage asa_temp: Data[19].Pose.Head set value [71.42857f,29.64286f,-7.142858f]
scoreboard players set #asa_child_pos_x AsaMatrix -3132
scoreboard players set #asa_child_pos_y AsaMatrix 1378
scoreboard players set #asa_child_pos_z AsaMatrix -3587
function #asa_matrix:rotate_world
function #asa_matrix:get_child_pos
execute store result storage asa_temp: Data[19].Pos[0] double 0.001 run scoreboard players get #asa_child_pos_x AsaMatrix
execute store result storage asa_temp: Data[19].Pos[1] double 0.001 run scoreboard players get #asa_child_pos_y AsaMatrix
execute store result storage asa_temp: Data[19].Pos[2] double 0.001 run scoreboard players get #asa_child_pos_z AsaMatrix
data modify storage asa_temp: Data[20].Rotation set from storage asa_temp: Temp.Rotation
data modify storage asa_temp: Data[20].Pose.Head set value [71.42857f,29.64286f,9.536743E-07f]
scoreboard players set #asa_child_pos_x AsaMatrix 1533
scoreboard players set #asa_child_pos_y AsaMatrix 2172
scoreboard players set #asa_child_pos_z AsaMatrix 847
function #asa_matrix:rotate_world
function #asa_matrix:get_child_pos
execute store result storage asa_temp: Data[20].Pos[0] double 0.001 run scoreboard players get #asa_child_pos_x AsaMatrix
execute store result storage asa_temp: Data[20].Pos[1] double 0.001 run scoreboard players get #asa_child_pos_y AsaMatrix
execute store result storage asa_temp: Data[20].Pos[2] double 0.001 run scoreboard players get #asa_child_pos_z AsaMatrix
data modify storage asa_temp: Data[21].Rotation set from storage asa_temp: Temp.Rotation
data modify storage asa_temp: Data[21].Pose.Head set value [71.42857f,29.64286f,-7.142858f]
scoreboard players set #asa_child_pos_x AsaMatrix -4630
scoreboard players set #asa_child_pos_y AsaMatrix 1704
scoreboard players set #asa_child_pos_z AsaMatrix -2664
function #asa_matrix:rotate_world
function #asa_matrix:get_child_pos
execute store result storage asa_temp: Data[21].Pos[0] double 0.001 run scoreboard players get #asa_child_pos_x AsaMatrix
execute store result storage asa_temp: Data[21].Pos[1] double 0.001 run scoreboard players get #asa_child_pos_y AsaMatrix
execute store result storage asa_temp: Data[21].Pos[2] double 0.001 run scoreboard players get #asa_child_pos_z AsaMatrix
