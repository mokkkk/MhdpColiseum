function #asa_matrix:get_parent_pos
data modify storage asa_temp: Temp.Rotation set from entity @s Rotation
function #asa_matrix:matrix_world
data modify storage asa_temp: Data[0].Rotation set from storage asa_temp: Temp.Rotation
data modify storage asa_temp: Data[0].Pose.Head set value [67.00001f,0f,62f]
scoreboard players set #asa_child_pos_x AsaMatrix 1441
scoreboard players set #asa_child_pos_y AsaMatrix 1342
scoreboard players set #asa_child_pos_z AsaMatrix 4734
function #asa_matrix:rotate_world
function #asa_matrix:get_child_pos
execute store result storage asa_temp: Data[0].Pos[0] double 0.001 run scoreboard players get #asa_child_pos_x AsaMatrix
execute store result storage asa_temp: Data[0].Pos[1] double 0.001 run scoreboard players get #asa_child_pos_y AsaMatrix
execute store result storage asa_temp: Data[0].Pos[2] double 0.001 run scoreboard players get #asa_child_pos_z AsaMatrix
data modify storage asa_temp: Data[1].Rotation set from storage asa_temp: Temp.Rotation
data modify storage asa_temp: Data[1].Pose.Head set value [73f,0f,62f]
scoreboard players set #asa_child_pos_x AsaMatrix 1676
scoreboard players set #asa_child_pos_y AsaMatrix 1467
scoreboard players set #asa_child_pos_z AsaMatrix 4773
function #asa_matrix:rotate_world
function #asa_matrix:get_child_pos
execute store result storage asa_temp: Data[1].Pos[0] double 0.001 run scoreboard players get #asa_child_pos_x AsaMatrix
execute store result storage asa_temp: Data[1].Pos[1] double 0.001 run scoreboard players get #asa_child_pos_y AsaMatrix
execute store result storage asa_temp: Data[1].Pos[2] double 0.001 run scoreboard players get #asa_child_pos_z AsaMatrix
data modify storage asa_temp: Data[2].Rotation set from storage asa_temp: Temp.Rotation
data modify storage asa_temp: Data[2].Pose.Head set value [33f,0f,74f]
scoreboard players set #asa_child_pos_x AsaMatrix 1890
scoreboard players set #asa_child_pos_y AsaMatrix 1471
scoreboard players set #asa_child_pos_z AsaMatrix 4382
function #asa_matrix:rotate_world
function #asa_matrix:get_child_pos
execute store result storage asa_temp: Data[2].Pos[0] double 0.001 run scoreboard players get #asa_child_pos_x AsaMatrix
execute store result storage asa_temp: Data[2].Pos[1] double 0.001 run scoreboard players get #asa_child_pos_y AsaMatrix
execute store result storage asa_temp: Data[2].Pos[2] double 0.001 run scoreboard players get #asa_child_pos_z AsaMatrix
data modify storage asa_temp: Data[3].Rotation set from storage asa_temp: Temp.Rotation
data modify storage asa_temp: Data[3].Pose.Head set value [32f,0f,76f]
scoreboard players set #asa_child_pos_x AsaMatrix 2147
scoreboard players set #asa_child_pos_y AsaMatrix 1535
scoreboard players set #asa_child_pos_z AsaMatrix 3958
function #asa_matrix:rotate_world
function #asa_matrix:get_child_pos
execute store result storage asa_temp: Data[3].Pos[0] double 0.001 run scoreboard players get #asa_child_pos_x AsaMatrix
execute store result storage asa_temp: Data[3].Pos[1] double 0.001 run scoreboard players get #asa_child_pos_y AsaMatrix
execute store result storage asa_temp: Data[3].Pos[2] double 0.001 run scoreboard players get #asa_child_pos_z AsaMatrix
data modify storage asa_temp: Data[4].Rotation set from storage asa_temp: Temp.Rotation
data modify storage asa_temp: Data[4].Pose.Head set value [12f,0f,76f]
scoreboard players set #asa_child_pos_x AsaMatrix 2255
scoreboard players set #asa_child_pos_y AsaMatrix 1562
scoreboard players set #asa_child_pos_z AsaMatrix 3674
function #asa_matrix:rotate_world
function #asa_matrix:get_child_pos
execute store result storage asa_temp: Data[4].Pos[0] double 0.001 run scoreboard players get #asa_child_pos_x AsaMatrix
execute store result storage asa_temp: Data[4].Pos[1] double 0.001 run scoreboard players get #asa_child_pos_y AsaMatrix
execute store result storage asa_temp: Data[4].Pos[2] double 0.001 run scoreboard players get #asa_child_pos_z AsaMatrix
data modify storage asa_temp: Data[5].Rotation set from storage asa_temp: Temp.Rotation
data modify storage asa_temp: Data[5].Pose.Head set value [19f,0f,76f]
scoreboard players set #asa_child_pos_x AsaMatrix 1055
scoreboard players set #asa_child_pos_y AsaMatrix 1263
scoreboard players set #asa_child_pos_z AsaMatrix 816
function #asa_matrix:rotate_world
function #asa_matrix:get_child_pos
execute store result storage asa_temp: Data[5].Pos[0] double 0.001 run scoreboard players get #asa_child_pos_x AsaMatrix
execute store result storage asa_temp: Data[5].Pos[1] double 0.001 run scoreboard players get #asa_child_pos_y AsaMatrix
execute store result storage asa_temp: Data[5].Pos[2] double 0.001 run scoreboard players get #asa_child_pos_z AsaMatrix
data modify storage asa_temp: Data[6].Rotation set from storage asa_temp: Temp.Rotation
data modify storage asa_temp: Data[6].Pose.Head set value [-36f,0f,76f]
scoreboard players set #asa_child_pos_x AsaMatrix 0
scoreboard players set #asa_child_pos_y AsaMatrix 999
scoreboard players set #asa_child_pos_z AsaMatrix 0
function #asa_matrix:rotate_world
function #asa_matrix:get_child_pos
execute store result storage asa_temp: Data[6].Pos[0] double 0.001 run scoreboard players get #asa_child_pos_x AsaMatrix
execute store result storage asa_temp: Data[6].Pos[1] double 0.001 run scoreboard players get #asa_child_pos_y AsaMatrix
execute store result storage asa_temp: Data[6].Pos[2] double 0.001 run scoreboard players get #asa_child_pos_z AsaMatrix
data modify storage asa_temp: Data[7].Rotation set from storage asa_temp: Temp.Rotation
data modify storage asa_temp: Data[7].Pose.Head set value [-20.00001f,0f,66f]
scoreboard players set #asa_child_pos_x AsaMatrix -27
scoreboard players set #asa_child_pos_y AsaMatrix -141
scoreboard players set #asa_child_pos_z AsaMatrix 95
function #asa_matrix:rotate_world
function #asa_matrix:get_child_pos
execute store result storage asa_temp: Data[7].Pos[0] double 0.001 run scoreboard players get #asa_child_pos_x AsaMatrix
execute store result storage asa_temp: Data[7].Pos[1] double 0.001 run scoreboard players get #asa_child_pos_y AsaMatrix
execute store result storage asa_temp: Data[7].Pos[2] double 0.001 run scoreboard players get #asa_child_pos_z AsaMatrix
data modify storage asa_temp: Data[8].Rotation set from storage asa_temp: Temp.Rotation
data modify storage asa_temp: Data[8].Pose.Head set value [-50.00001f,0f,86f]
scoreboard players set #asa_child_pos_x AsaMatrix -559
scoreboard players set #asa_child_pos_y AsaMatrix 1994
scoreboard players set #asa_child_pos_z AsaMatrix 95
function #asa_matrix:rotate_world
function #asa_matrix:get_child_pos
execute store result storage asa_temp: Data[8].Pos[0] double 0.001 run scoreboard players get #asa_child_pos_x AsaMatrix
execute store result storage asa_temp: Data[8].Pos[1] double 0.001 run scoreboard players get #asa_child_pos_y AsaMatrix
execute store result storage asa_temp: Data[8].Pos[2] double 0.001 run scoreboard players get #asa_child_pos_z AsaMatrix
data modify storage asa_temp: Data[9].Rotation set from storage asa_temp: Temp.Rotation
data modify storage asa_temp: Data[9].Pose.Head set value [73.99999f,0f,66f]
scoreboard players set #asa_child_pos_x AsaMatrix -745
scoreboard players set #asa_child_pos_y AsaMatrix -460
scoreboard players set #asa_child_pos_z AsaMatrix 275
function #asa_matrix:rotate_world
function #asa_matrix:get_child_pos
execute store result storage asa_temp: Data[9].Pos[0] double 0.001 run scoreboard players get #asa_child_pos_x AsaMatrix
execute store result storage asa_temp: Data[9].Pos[1] double 0.001 run scoreboard players get #asa_child_pos_y AsaMatrix
execute store result storage asa_temp: Data[9].Pos[2] double 0.001 run scoreboard players get #asa_child_pos_z AsaMatrix
data modify storage asa_temp: Data[10].Rotation set from storage asa_temp: Temp.Rotation
data modify storage asa_temp: Data[10].Pose.Head set value [43.99999f,0f,86f]
scoreboard players set #asa_child_pos_x AsaMatrix -1149
scoreboard players set #asa_child_pos_y AsaMatrix 1953
scoreboard players set #asa_child_pos_z AsaMatrix 643
function #asa_matrix:rotate_world
function #asa_matrix:get_child_pos
execute store result storage asa_temp: Data[10].Pos[0] double 0.001 run scoreboard players get #asa_child_pos_x AsaMatrix
execute store result storage asa_temp: Data[10].Pos[1] double 0.001 run scoreboard players get #asa_child_pos_y AsaMatrix
execute store result storage asa_temp: Data[10].Pos[2] double 0.001 run scoreboard players get #asa_child_pos_z AsaMatrix
data modify storage asa_temp: Data[11].Rotation set from storage asa_temp: Temp.Rotation
data modify storage asa_temp: Data[11].Pose.Head set value [0f,0f,66f]
scoreboard players set #asa_child_pos_x AsaMatrix -733
scoreboard players set #asa_child_pos_y AsaMatrix -455
scoreboard players set #asa_child_pos_z AsaMatrix -769
function #asa_matrix:rotate_world
function #asa_matrix:get_child_pos
execute store result storage asa_temp: Data[11].Pos[0] double 0.001 run scoreboard players get #asa_child_pos_x AsaMatrix
execute store result storage asa_temp: Data[11].Pos[1] double 0.001 run scoreboard players get #asa_child_pos_y AsaMatrix
execute store result storage asa_temp: Data[11].Pos[2] double 0.001 run scoreboard players get #asa_child_pos_z AsaMatrix
data modify storage asa_temp: Data[12].Rotation set from storage asa_temp: Temp.Rotation
data modify storage asa_temp: Data[12].Pose.Head set value [-16.00001f,0f,86f]
scoreboard players set #asa_child_pos_x AsaMatrix -1658
scoreboard players set #asa_child_pos_y AsaMatrix 1917
scoreboard players set #asa_child_pos_z AsaMatrix -267
function #asa_matrix:rotate_world
function #asa_matrix:get_child_pos
execute store result storage asa_temp: Data[12].Pos[0] double 0.001 run scoreboard players get #asa_child_pos_x AsaMatrix
execute store result storage asa_temp: Data[12].Pos[1] double 0.001 run scoreboard players get #asa_child_pos_y AsaMatrix
execute store result storage asa_temp: Data[12].Pos[2] double 0.001 run scoreboard players get #asa_child_pos_z AsaMatrix
data modify storage asa_temp: Data[13].Rotation set from storage asa_temp: Temp.Rotation
data modify storage asa_temp: Data[13].Pose.Head set value [50f,0f,76f]
scoreboard players set #asa_child_pos_x AsaMatrix -1830
scoreboard players set #asa_child_pos_y AsaMatrix -943
scoreboard players set #asa_child_pos_z AsaMatrix -769
function #asa_matrix:rotate_world
function #asa_matrix:get_child_pos
execute store result storage asa_temp: Data[13].Pos[0] double 0.001 run scoreboard players get #asa_child_pos_x AsaMatrix
execute store result storage asa_temp: Data[13].Pos[1] double 0.001 run scoreboard players get #asa_child_pos_y AsaMatrix
execute store result storage asa_temp: Data[13].Pos[2] double 0.001 run scoreboard players get #asa_child_pos_z AsaMatrix
data modify storage asa_temp: Data[14].Rotation set from storage asa_temp: Temp.Rotation
data modify storage asa_temp: Data[14].Pose.Head set value [3.99999f,0f,76f]
scoreboard players set #asa_child_pos_x AsaMatrix -2809
scoreboard players set #asa_child_pos_y AsaMatrix 1837
scoreboard players set #asa_child_pos_z AsaMatrix 64
function #asa_matrix:rotate_world
function #asa_matrix:get_child_pos
execute store result storage asa_temp: Data[14].Pos[0] double 0.001 run scoreboard players get #asa_child_pos_x AsaMatrix
execute store result storage asa_temp: Data[14].Pos[1] double 0.001 run scoreboard players get #asa_child_pos_y AsaMatrix
execute store result storage asa_temp: Data[14].Pos[2] double 0.001 run scoreboard players get #asa_child_pos_z AsaMatrix
data modify storage asa_temp: Data[15].Rotation set from storage asa_temp: Temp.Rotation
data modify storage asa_temp: Data[15].Pose.Head set value [-56.00001f,0f,78f]
scoreboard players set #asa_child_pos_x AsaMatrix -856
scoreboard players set #asa_child_pos_y AsaMatrix 786
scoreboard players set #asa_child_pos_z AsaMatrix -1214
function #asa_matrix:rotate_world
function #asa_matrix:get_child_pos
execute store result storage asa_temp: Data[15].Pos[0] double 0.001 run scoreboard players get #asa_child_pos_x AsaMatrix
execute store result storage asa_temp: Data[15].Pos[1] double 0.001 run scoreboard players get #asa_child_pos_y AsaMatrix
execute store result storage asa_temp: Data[15].Pos[2] double 0.001 run scoreboard players get #asa_child_pos_z AsaMatrix
data modify storage asa_temp: Data[16].Rotation set from storage asa_temp: Temp.Rotation
data modify storage asa_temp: Data[16].Pose.Head set value [-71.00001f,0f,80f]
scoreboard players set #asa_child_pos_x AsaMatrix -1802
scoreboard players set #asa_child_pos_y AsaMatrix 585
scoreboard players set #asa_child_pos_z AsaMatrix -1927
function #asa_matrix:rotate_world
function #asa_matrix:get_child_pos
execute store result storage asa_temp: Data[16].Pos[0] double 0.001 run scoreboard players get #asa_child_pos_x AsaMatrix
execute store result storage asa_temp: Data[16].Pos[1] double 0.001 run scoreboard players get #asa_child_pos_y AsaMatrix
execute store result storage asa_temp: Data[16].Pos[2] double 0.001 run scoreboard players get #asa_child_pos_z AsaMatrix
data modify storage asa_temp: Data[17].Rotation set from storage asa_temp: Temp.Rotation
data modify storage asa_temp: Data[17].Pose.Head set value [-91.00002f,0f,98f]
scoreboard players set #asa_child_pos_x AsaMatrix -3152
scoreboard players set #asa_child_pos_y AsaMatrix 347
scoreboard players set #asa_child_pos_z AsaMatrix -2399
function #asa_matrix:rotate_world
function #asa_matrix:get_child_pos
execute store result storage asa_temp: Data[17].Pos[0] double 0.001 run scoreboard players get #asa_child_pos_x AsaMatrix
execute store result storage asa_temp: Data[17].Pos[1] double 0.001 run scoreboard players get #asa_child_pos_y AsaMatrix
execute store result storage asa_temp: Data[17].Pos[2] double 0.001 run scoreboard players get #asa_child_pos_z AsaMatrix
data modify storage asa_temp: Data[18].Rotation set from storage asa_temp: Temp.Rotation
data modify storage asa_temp: Data[18].Pose.Head set value [-110f,0f,106f]
scoreboard players set #asa_child_pos_x AsaMatrix -4888
scoreboard players set #asa_child_pos_y AsaMatrix 591
scoreboard players set #asa_child_pos_z AsaMatrix -2568
function #asa_matrix:rotate_world
function #asa_matrix:get_child_pos
execute store result storage asa_temp: Data[18].Pos[0] double 0.001 run scoreboard players get #asa_child_pos_x AsaMatrix
execute store result storage asa_temp: Data[18].Pos[1] double 0.001 run scoreboard players get #asa_child_pos_y AsaMatrix
execute store result storage asa_temp: Data[18].Pos[2] double 0.001 run scoreboard players get #asa_child_pos_z AsaMatrix
data modify storage asa_temp: Data[19].Rotation set from storage asa_temp: Temp.Rotation
data modify storage asa_temp: Data[19].Pose.Head set value [142f,10f,4f]
scoreboard players set #asa_child_pos_x AsaMatrix 1556
scoreboard players set #asa_child_pos_y AsaMatrix 254
scoreboard players set #asa_child_pos_z AsaMatrix 1957
function #asa_matrix:rotate_world
function #asa_matrix:get_child_pos
execute store result storage asa_temp: Data[19].Pos[0] double 0.001 run scoreboard players get #asa_child_pos_x AsaMatrix
execute store result storage asa_temp: Data[19].Pos[1] double 0.001 run scoreboard players get #asa_child_pos_y AsaMatrix
execute store result storage asa_temp: Data[19].Pos[2] double 0.001 run scoreboard players get #asa_child_pos_z AsaMatrix
data modify storage asa_temp: Data[20].Rotation set from storage asa_temp: Temp.Rotation
data modify storage asa_temp: Data[20].Pose.Head set value [134f,-10f,126f]
scoreboard players set #asa_child_pos_x AsaMatrix 1023
scoreboard players set #asa_child_pos_y AsaMatrix 2388
scoreboard players set #asa_child_pos_z AsaMatrix 1957
function #asa_matrix:rotate_world
function #asa_matrix:get_child_pos
execute store result storage asa_temp: Data[20].Pos[0] double 0.001 run scoreboard players get #asa_child_pos_x AsaMatrix
execute store result storage asa_temp: Data[20].Pos[1] double 0.001 run scoreboard players get #asa_child_pos_y AsaMatrix
execute store result storage asa_temp: Data[20].Pos[2] double 0.001 run scoreboard players get #asa_child_pos_z AsaMatrix
data modify storage asa_temp: Data[21].Rotation set from storage asa_temp: Temp.Rotation
data modify storage asa_temp: Data[21].Pose.Head set value [58f,0f,-4.000001f]
scoreboard players set #asa_child_pos_x AsaMatrix 2183
scoreboard players set #asa_child_pos_y AsaMatrix -1059
scoreboard players set #asa_child_pos_z AsaMatrix 768
function #asa_matrix:rotate_world
function #asa_matrix:get_child_pos
execute store result storage asa_temp: Data[21].Pos[0] double 0.001 run scoreboard players get #asa_child_pos_x AsaMatrix
execute store result storage asa_temp: Data[21].Pos[1] double 0.001 run scoreboard players get #asa_child_pos_y AsaMatrix
execute store result storage asa_temp: Data[21].Pos[2] double 0.001 run scoreboard players get #asa_child_pos_z AsaMatrix
data modify storage asa_temp: Data[22].Rotation set from storage asa_temp: Temp.Rotation
data modify storage asa_temp: Data[22].Pose.Head set value [74f,0f,86f]
scoreboard players set #asa_child_pos_x AsaMatrix 266
scoreboard players set #asa_child_pos_y AsaMatrix 3785
scoreboard players set #asa_child_pos_z AsaMatrix 954
function #asa_matrix:rotate_world
function #asa_matrix:get_child_pos
execute store result storage asa_temp: Data[22].Pos[0] double 0.001 run scoreboard players get #asa_child_pos_x AsaMatrix
execute store result storage asa_temp: Data[22].Pos[1] double 0.001 run scoreboard players get #asa_child_pos_y AsaMatrix
execute store result storage asa_temp: Data[22].Pos[2] double 0.001 run scoreboard players get #asa_child_pos_z AsaMatrix
data modify storage asa_temp: Data[23].Rotation set from storage asa_temp: Temp.Rotation
data modify storage asa_temp: Data[23].Pose.Head set value [3.814697E-06f,-5f,-1.430511E-06f]
scoreboard players set #asa_child_pos_x AsaMatrix 2283
scoreboard players set #asa_child_pos_y AsaMatrix -2497
scoreboard players set #asa_child_pos_z AsaMatrix 2141
function #asa_matrix:rotate_world
function #asa_matrix:get_child_pos
execute store result storage asa_temp: Data[23].Pos[0] double 0.001 run scoreboard players get #asa_child_pos_x AsaMatrix
execute store result storage asa_temp: Data[23].Pos[1] double 0.001 run scoreboard players get #asa_child_pos_y AsaMatrix
execute store result storage asa_temp: Data[23].Pos[2] double 0.001 run scoreboard players get #asa_child_pos_z AsaMatrix
data modify storage asa_temp: Data[24].Rotation set from storage asa_temp: Temp.Rotation
data modify storage asa_temp: Data[24].Pose.Head set value [54f,5f,86f]
scoreboard players set #asa_child_pos_x AsaMatrix -1494
scoreboard players set #asa_child_pos_y AsaMatrix 3662
scoreboard players set #asa_child_pos_z AsaMatrix 1876
function #asa_matrix:rotate_world
function #asa_matrix:get_child_pos
execute store result storage asa_temp: Data[24].Pos[0] double 0.001 run scoreboard players get #asa_child_pos_x AsaMatrix
execute store result storage asa_temp: Data[24].Pos[1] double 0.001 run scoreboard players get #asa_child_pos_y AsaMatrix
execute store result storage asa_temp: Data[24].Pos[2] double 0.001 run scoreboard players get #asa_child_pos_z AsaMatrix
