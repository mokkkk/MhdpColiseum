function #asa_matrix:get_parent_pos
data modify storage asa_temp: Temp.Rotation set from entity @s Rotation
function #asa_matrix:matrix_world
data modify storage asa_temp: Data[0].Rotation set from storage asa_temp: Temp.Rotation
data modify storage asa_temp: Data[0].Pose.Head set value [-37.15384f,16.53846f,20.09616f]
scoreboard players set #asa_child_pos_x AsaMatrix -335
scoreboard players set #asa_child_pos_y AsaMatrix 6369
scoreboard players set #asa_child_pos_z AsaMatrix 1193
function #asa_matrix:rotate_world
function #asa_matrix:get_child_pos
execute store result storage asa_temp: Data[0].Pos[0] double 0.001 run scoreboard players get #asa_child_pos_x AsaMatrix
execute store result storage asa_temp: Data[0].Pos[1] double 0.001 run scoreboard players get #asa_child_pos_y AsaMatrix
execute store result storage asa_temp: Data[0].Pos[2] double 0.001 run scoreboard players get #asa_child_pos_z AsaMatrix
data modify storage asa_temp: Data[1].Rotation set from storage asa_temp: Temp.Rotation
data modify storage asa_temp: Data[1].Pose.Head set value [-19.46153f,16.53846f,20.09616f]
scoreboard players set #asa_child_pos_x AsaMatrix -272
scoreboard players set #asa_child_pos_y AsaMatrix 6317
scoreboard players set #asa_child_pos_z AsaMatrix 936
function #asa_matrix:rotate_world
function #asa_matrix:get_child_pos
execute store result storage asa_temp: Data[1].Pos[0] double 0.001 run scoreboard players get #asa_child_pos_x AsaMatrix
execute store result storage asa_temp: Data[1].Pos[1] double 0.001 run scoreboard players get #asa_child_pos_y AsaMatrix
execute store result storage asa_temp: Data[1].Pos[2] double 0.001 run scoreboard players get #asa_child_pos_z AsaMatrix
data modify storage asa_temp: Data[2].Rotation set from storage asa_temp: Temp.Rotation
data modify storage asa_temp: Data[2].Pose.Head set value [-59.07693f,16.53846f,4.134616f]
scoreboard players set #asa_child_pos_x AsaMatrix -232
scoreboard players set #asa_child_pos_y AsaMatrix 5991
scoreboard players set #asa_child_pos_z AsaMatrix 757
function #asa_matrix:rotate_world
function #asa_matrix:get_child_pos
execute store result storage asa_temp: Data[2].Pos[0] double 0.001 run scoreboard players get #asa_child_pos_x AsaMatrix
execute store result storage asa_temp: Data[2].Pos[1] double 0.001 run scoreboard players get #asa_child_pos_y AsaMatrix
execute store result storage asa_temp: Data[2].Pos[2] double 0.001 run scoreboard players get #asa_child_pos_z AsaMatrix
data modify storage asa_temp: Data[3].Rotation set from storage asa_temp: Temp.Rotation
data modify storage asa_temp: Data[3].Pose.Head set value [-51.76923f,16.53846f,-4.134616f]
scoreboard players set #asa_child_pos_x AsaMatrix -116
scoreboard players set #asa_child_pos_y AsaMatrix 5606
scoreboard players set #asa_child_pos_z AsaMatrix 461
function #asa_matrix:rotate_world
function #asa_matrix:get_child_pos
execute store result storage asa_temp: Data[3].Pos[0] double 0.001 run scoreboard players get #asa_child_pos_x AsaMatrix
execute store result storage asa_temp: Data[3].Pos[1] double 0.001 run scoreboard players get #asa_child_pos_y AsaMatrix
execute store result storage asa_temp: Data[3].Pos[2] double 0.001 run scoreboard players get #asa_child_pos_z AsaMatrix
data modify storage asa_temp: Data[4].Rotation set from storage asa_temp: Temp.Rotation
data modify storage asa_temp: Data[4].Pose.Head set value [-44.07692f,16.53846f,-4.134616f]
scoreboard players set #asa_child_pos_x AsaMatrix -33
scoreboard players set #asa_child_pos_y AsaMatrix 5439
scoreboard players set #asa_child_pos_z AsaMatrix 221
function #asa_matrix:rotate_world
function #asa_matrix:get_child_pos
execute store result storage asa_temp: Data[4].Pos[0] double 0.001 run scoreboard players get #asa_child_pos_x AsaMatrix
execute store result storage asa_temp: Data[4].Pos[1] double 0.001 run scoreboard players get #asa_child_pos_y AsaMatrix
execute store result storage asa_temp: Data[4].Pos[2] double 0.001 run scoreboard players get #asa_child_pos_z AsaMatrix
data modify storage asa_temp: Data[5].Rotation set from storage asa_temp: Temp.Rotation
data modify storage asa_temp: Data[5].Pose.Head set value [-49.07692f,8.269232f,0f]
scoreboard players set #asa_child_pos_x AsaMatrix -44
scoreboard players set #asa_child_pos_y AsaMatrix 2325
scoreboard players set #asa_child_pos_z AsaMatrix 300
function #asa_matrix:rotate_world
function #asa_matrix:get_child_pos
execute store result storage asa_temp: Data[5].Pos[0] double 0.001 run scoreboard players get #asa_child_pos_x AsaMatrix
execute store result storage asa_temp: Data[5].Pos[1] double 0.001 run scoreboard players get #asa_child_pos_y AsaMatrix
execute store result storage asa_temp: Data[5].Pos[2] double 0.001 run scoreboard players get #asa_child_pos_z AsaMatrix
data modify storage asa_temp: Data[6].Rotation set from storage asa_temp: Temp.Rotation
data modify storage asa_temp: Data[6].Pose.Head set value [-60f,8.269232f,0f]
scoreboard players set #asa_child_pos_x AsaMatrix 0
scoreboard players set #asa_child_pos_y AsaMatrix 999
scoreboard players set #asa_child_pos_z AsaMatrix 0
function #asa_matrix:rotate_world
function #asa_matrix:get_child_pos
execute store result storage asa_temp: Data[6].Pos[0] double 0.001 run scoreboard players get #asa_child_pos_x AsaMatrix
execute store result storage asa_temp: Data[6].Pos[1] double 0.001 run scoreboard players get #asa_child_pos_y AsaMatrix
execute store result storage asa_temp: Data[6].Pos[2] double 0.001 run scoreboard players get #asa_child_pos_z AsaMatrix
data modify storage asa_temp: Data[7].Rotation set from storage asa_temp: Temp.Rotation
data modify storage asa_temp: Data[7].Pose.Head set value [-70f,0f,-10f]
scoreboard players set #asa_child_pos_x AsaMatrix 1058
scoreboard players set #asa_child_pos_y AsaMatrix 763
scoreboard players set #asa_child_pos_z AsaMatrix 365
function #asa_matrix:rotate_world
function #asa_matrix:get_child_pos
execute store result storage asa_temp: Data[7].Pos[0] double 0.001 run scoreboard players get #asa_child_pos_x AsaMatrix
execute store result storage asa_temp: Data[7].Pos[1] double 0.001 run scoreboard players get #asa_child_pos_y AsaMatrix
execute store result storage asa_temp: Data[7].Pos[2] double 0.001 run scoreboard players get #asa_child_pos_z AsaMatrix
data modify storage asa_temp: Data[8].Rotation set from storage asa_temp: Temp.Rotation
data modify storage asa_temp: Data[8].Pose.Head set value [0f,24.8077f,10f]
scoreboard players set #asa_child_pos_x AsaMatrix -1119
scoreboard players set #asa_child_pos_y AsaMatrix 763
scoreboard players set #asa_child_pos_z AsaMatrix 49
function #asa_matrix:rotate_world
function #asa_matrix:get_child_pos
execute store result storage asa_temp: Data[8].Pos[0] double 0.001 run scoreboard players get #asa_child_pos_x AsaMatrix
execute store result storage asa_temp: Data[8].Pos[1] double 0.001 run scoreboard players get #asa_child_pos_y AsaMatrix
execute store result storage asa_temp: Data[8].Pos[2] double 0.001 run scoreboard players get #asa_child_pos_z AsaMatrix
data modify storage asa_temp: Data[9].Rotation set from storage asa_temp: Temp.Rotation
data modify storage asa_temp: Data[9].Pose.Head set value [35f,0f,-10f]
scoreboard players set #asa_child_pos_x AsaMatrix 1122
scoreboard players set #asa_child_pos_y AsaMatrix 401
scoreboard players set #asa_child_pos_z AsaMatrix 1083
function #asa_matrix:rotate_world
function #asa_matrix:get_child_pos
execute store result storage asa_temp: Data[9].Pos[0] double 0.001 run scoreboard players get #asa_child_pos_x AsaMatrix
execute store result storage asa_temp: Data[9].Pos[1] double 0.001 run scoreboard players get #asa_child_pos_y AsaMatrix
execute store result storage asa_temp: Data[9].Pos[2] double 0.001 run scoreboard players get #asa_child_pos_z AsaMatrix
data modify storage asa_temp: Data[10].Rotation set from storage asa_temp: Temp.Rotation
data modify storage asa_temp: Data[10].Pose.Head set value [65f,24.8077f,10f]
scoreboard players set #asa_child_pos_x AsaMatrix -1217
scoreboard players set #asa_child_pos_y AsaMatrix -32
scoreboard players set #asa_child_pos_z AsaMatrix -42
function #asa_matrix:rotate_world
function #asa_matrix:get_child_pos
execute store result storage asa_temp: Data[10].Pos[0] double 0.001 run scoreboard players get #asa_child_pos_x AsaMatrix
execute store result storage asa_temp: Data[10].Pos[1] double 0.001 run scoreboard players get #asa_child_pos_y AsaMatrix
execute store result storage asa_temp: Data[10].Pos[2] double 0.001 run scoreboard players get #asa_child_pos_z AsaMatrix
data modify storage asa_temp: Data[11].Rotation set from storage asa_temp: Temp.Rotation
data modify storage asa_temp: Data[11].Pose.Head set value [-5f,0f,-10f]
scoreboard players set #asa_child_pos_x AsaMatrix 1234
scoreboard players set #asa_child_pos_y AsaMatrix -236
scoreboard players set #asa_child_pos_z AsaMatrix 264
function #asa_matrix:rotate_world
function #asa_matrix:get_child_pos
execute store result storage asa_temp: Data[11].Pos[0] double 0.001 run scoreboard players get #asa_child_pos_x AsaMatrix
execute store result storage asa_temp: Data[11].Pos[1] double 0.001 run scoreboard players get #asa_child_pos_y AsaMatrix
execute store result storage asa_temp: Data[11].Pos[2] double 0.001 run scoreboard players get #asa_child_pos_z AsaMatrix
data modify storage asa_temp: Data[12].Rotation set from storage asa_temp: Temp.Rotation
data modify storage asa_temp: Data[12].Pose.Head set value [5f,24.8077f,10f]
scoreboard players set #asa_child_pos_x AsaMatrix -816
scoreboard players set #asa_child_pos_y AsaMatrix -256
scoreboard players set #asa_child_pos_z AsaMatrix -980
function #asa_matrix:rotate_world
function #asa_matrix:get_child_pos
execute store result storage asa_temp: Data[12].Pos[0] double 0.001 run scoreboard players get #asa_child_pos_x AsaMatrix
execute store result storage asa_temp: Data[12].Pos[1] double 0.001 run scoreboard players get #asa_child_pos_y AsaMatrix
execute store result storage asa_temp: Data[12].Pos[2] double 0.001 run scoreboard players get #asa_child_pos_z AsaMatrix
data modify storage asa_temp: Data[13].Rotation set from storage asa_temp: Temp.Rotation
data modify storage asa_temp: Data[13].Pose.Head set value [0f,-20f,0f]
scoreboard players set #asa_child_pos_x AsaMatrix 1442
scoreboard players set #asa_child_pos_y AsaMatrix -1414
scoreboard players set #asa_child_pos_z AsaMatrix 368
function #asa_matrix:rotate_world
function #asa_matrix:get_child_pos
execute store result storage asa_temp: Data[13].Pos[0] double 0.001 run scoreboard players get #asa_child_pos_x AsaMatrix
execute store result storage asa_temp: Data[13].Pos[1] double 0.001 run scoreboard players get #asa_child_pos_y AsaMatrix
execute store result storage asa_temp: Data[13].Pos[2] double 0.001 run scoreboard players get #asa_child_pos_z AsaMatrix
data modify storage asa_temp: Data[14].Rotation set from storage asa_temp: Temp.Rotation
data modify storage asa_temp: Data[14].Pose.Head set value [0f,24.8077f,0f]
scoreboard players set #asa_child_pos_x AsaMatrix -981
scoreboard players set #asa_child_pos_y AsaMatrix -1441
scoreboard players set #asa_child_pos_z AsaMatrix -1075
function #asa_matrix:rotate_world
function #asa_matrix:get_child_pos
execute store result storage asa_temp: Data[14].Pos[0] double 0.001 run scoreboard players get #asa_child_pos_x AsaMatrix
execute store result storage asa_temp: Data[14].Pos[1] double 0.001 run scoreboard players get #asa_child_pos_y AsaMatrix
execute store result storage asa_temp: Data[14].Pos[2] double 0.001 run scoreboard players get #asa_child_pos_z AsaMatrix
data modify storage asa_temp: Data[15].Rotation set from storage asa_temp: Temp.Rotation
data modify storage asa_temp: Data[15].Pose.Head set value [-30f,10.57692f,0f]
scoreboard players set #asa_child_pos_x AsaMatrix 107
scoreboard players set #asa_child_pos_y AsaMatrix -300
scoreboard players set #asa_child_pos_z AsaMatrix -743
function #asa_matrix:rotate_world
function #asa_matrix:get_child_pos
execute store result storage asa_temp: Data[15].Pos[0] double 0.001 run scoreboard players get #asa_child_pos_x AsaMatrix
execute store result storage asa_temp: Data[15].Pos[1] double 0.001 run scoreboard players get #asa_child_pos_y AsaMatrix
execute store result storage asa_temp: Data[15].Pos[2] double 0.001 run scoreboard players get #asa_child_pos_z AsaMatrix
data modify storage asa_temp: Data[16].Rotation set from storage asa_temp: Temp.Rotation
data modify storage asa_temp: Data[16].Pose.Head set value [5f,1.115383f,0f]
scoreboard players set #asa_child_pos_x AsaMatrix 303
scoreboard players set #asa_child_pos_y AsaMatrix -856
scoreboard players set #asa_child_pos_z AsaMatrix -1789
function #asa_matrix:rotate_world
function #asa_matrix:get_child_pos
execute store result storage asa_temp: Data[16].Pos[0] double 0.001 run scoreboard players get #asa_child_pos_x AsaMatrix
execute store result storage asa_temp: Data[16].Pos[1] double 0.001 run scoreboard players get #asa_child_pos_y AsaMatrix
execute store result storage asa_temp: Data[16].Pos[2] double 0.001 run scoreboard players get #asa_child_pos_z AsaMatrix
data modify storage asa_temp: Data[17].Rotation set from storage asa_temp: Temp.Rotation
data modify storage asa_temp: Data[17].Pose.Head set value [25f,4.80769f,0f]
scoreboard players set #asa_child_pos_x AsaMatrix 331
scoreboard players set #asa_child_pos_y AsaMatrix -730
scoreboard players set #asa_child_pos_z AsaMatrix -3233
function #asa_matrix:rotate_world
function #asa_matrix:get_child_pos
execute store result storage asa_temp: Data[17].Pos[0] double 0.001 run scoreboard players get #asa_child_pos_x AsaMatrix
execute store result storage asa_temp: Data[17].Pos[1] double 0.001 run scoreboard players get #asa_child_pos_y AsaMatrix
execute store result storage asa_temp: Data[17].Pos[2] double 0.001 run scoreboard players get #asa_child_pos_z AsaMatrix
data modify storage asa_temp: Data[18].Rotation set from storage asa_temp: Temp.Rotation
data modify storage asa_temp: Data[18].Pose.Head set value [40f,1.269226f,0f]
scoreboard players set #asa_child_pos_x AsaMatrix 457
scoreboard players set #asa_child_pos_y AsaMatrix 191
scoreboard players set #asa_child_pos_z AsaMatrix -4729
function #asa_matrix:rotate_world
function #asa_matrix:get_child_pos
execute store result storage asa_temp: Data[18].Pos[0] double 0.001 run scoreboard players get #asa_child_pos_x AsaMatrix
execute store result storage asa_temp: Data[18].Pos[1] double 0.001 run scoreboard players get #asa_child_pos_y AsaMatrix
execute store result storage asa_temp: Data[18].Pos[2] double 0.001 run scoreboard players get #asa_child_pos_z AsaMatrix
data modify storage asa_temp: Data[19].Rotation set from storage asa_temp: Temp.Rotation
data modify storage asa_temp: Data[19].Pose.Head set value [82.46155f,18.26923f,-50f]
scoreboard players set #asa_child_pos_x AsaMatrix 1015
scoreboard players set #asa_child_pos_y AsaMatrix 3474
scoreboard players set #asa_child_pos_z AsaMatrix 658
function #asa_matrix:rotate_world
function #asa_matrix:get_child_pos
execute store result storage asa_temp: Data[19].Pos[0] double 0.001 run scoreboard players get #asa_child_pos_x AsaMatrix
execute store result storage asa_temp: Data[19].Pos[1] double 0.001 run scoreboard players get #asa_child_pos_y AsaMatrix
execute store result storage asa_temp: Data[19].Pos[2] double 0.001 run scoreboard players get #asa_child_pos_z AsaMatrix
data modify storage asa_temp: Data[20].Rotation set from storage asa_temp: Temp.Rotation
data modify storage asa_temp: Data[20].Pose.Head set value [75.92308f,-1.730768f,58.26923f]
scoreboard players set #asa_child_pos_x AsaMatrix -1162
scoreboard players set #asa_child_pos_y AsaMatrix 3474
scoreboard players set #asa_child_pos_z AsaMatrix 341
function #asa_matrix:rotate_world
function #asa_matrix:get_child_pos
execute store result storage asa_temp: Data[20].Pos[0] double 0.001 run scoreboard players get #asa_child_pos_x AsaMatrix
execute store result storage asa_temp: Data[20].Pos[1] double 0.001 run scoreboard players get #asa_child_pos_y AsaMatrix
execute store result storage asa_temp: Data[20].Pos[2] double 0.001 run scoreboard players get #asa_child_pos_z AsaMatrix
data modify storage asa_temp: Data[21].Rotation set from storage asa_temp: Temp.Rotation
data modify storage asa_temp: Data[21].Pose.Head set value [-3.884605f,8.269232f,-20f]
scoreboard players set #asa_child_pos_x AsaMatrix 2580
scoreboard players set #asa_child_pos_y AsaMatrix 2603
scoreboard players set #asa_child_pos_z AsaMatrix 1227
function #asa_matrix:rotate_world
function #asa_matrix:get_child_pos
execute store result storage asa_temp: Data[21].Pos[0] double 0.001 run scoreboard players get #asa_child_pos_x AsaMatrix
execute store result storage asa_temp: Data[21].Pos[1] double 0.001 run scoreboard players get #asa_child_pos_y AsaMatrix
execute store result storage asa_temp: Data[21].Pos[2] double 0.001 run scoreboard players get #asa_child_pos_z AsaMatrix
data modify storage asa_temp: Data[22].Rotation set from storage asa_temp: Temp.Rotation
data modify storage asa_temp: Data[22].Pose.Head set value [-1.769226f,8.269232f,8.26923f]
scoreboard players set #asa_child_pos_x AsaMatrix -2858
scoreboard players set #asa_child_pos_y AsaMatrix 2990
scoreboard players set #asa_child_pos_z AsaMatrix 988
function #asa_matrix:rotate_world
function #asa_matrix:get_child_pos
execute store result storage asa_temp: Data[22].Pos[0] double 0.001 run scoreboard players get #asa_child_pos_x AsaMatrix
execute store result storage asa_temp: Data[22].Pos[1] double 0.001 run scoreboard players get #asa_child_pos_y AsaMatrix
execute store result storage asa_temp: Data[22].Pos[2] double 0.001 run scoreboard players get #asa_child_pos_z AsaMatrix
data modify storage asa_temp: Data[23].Rotation set from storage asa_temp: Temp.Rotation
data modify storage asa_temp: Data[23].Pose.Head set value [-8.11538f,3.269232f,0f]
scoreboard players set #asa_child_pos_x AsaMatrix 2139
scoreboard players set #asa_child_pos_y AsaMatrix 3008
scoreboard players set #asa_child_pos_z AsaMatrix 3125
function #asa_matrix:rotate_world
function #asa_matrix:get_child_pos
execute store result storage asa_temp: Data[23].Pos[0] double 0.001 run scoreboard players get #asa_child_pos_x AsaMatrix
execute store result storage asa_temp: Data[23].Pos[1] double 0.001 run scoreboard players get #asa_child_pos_y AsaMatrix
execute store result storage asa_temp: Data[23].Pos[2] double 0.001 run scoreboard players get #asa_child_pos_z AsaMatrix
data modify storage asa_temp: Data[24].Rotation set from storage asa_temp: Temp.Rotation
data modify storage asa_temp: Data[24].Pose.Head set value [-14.26923f,13.26923f,8.26923f]
scoreboard players set #asa_child_pos_x AsaMatrix -3068
scoreboard players set #asa_child_pos_y AsaMatrix 3485
scoreboard players set #asa_child_pos_z AsaMatrix 2905
function #asa_matrix:rotate_world
function #asa_matrix:get_child_pos
execute store result storage asa_temp: Data[24].Pos[0] double 0.001 run scoreboard players get #asa_child_pos_x AsaMatrix
execute store result storage asa_temp: Data[24].Pos[1] double 0.001 run scoreboard players get #asa_child_pos_y AsaMatrix
execute store result storage asa_temp: Data[24].Pos[2] double 0.001 run scoreboard players get #asa_child_pos_z AsaMatrix
