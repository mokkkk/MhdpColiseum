execute as @e[type=armor_stand,tag=ReusParts,tag=HeadU] run data merge entity @s {Pose:{Head:[10f,0f,0f]}}
execute as @e[type=armor_stand,tag=ReusParts,tag=HeadL] run data merge entity @s {Pose:{Head:[10f,0f,0f]}}
execute as @e[type=armor_stand,tag=ReusParts,tag=Neck0] run data merge entity @s {Pose:{Head:[20f,0f,0f]}}
execute as @e[type=armor_stand,tag=ReusParts,tag=Neck1] run data merge entity @s {Pose:{Head:[15f,0f,0f]}}
execute as @e[type=armor_stand,tag=ReusParts,tag=Neck2] run data merge entity @s {Pose:{Head:[10f,0f,0f]}}
execute as @e[type=armor_stand,tag=ReusParts,tag=Body0] run data merge entity @s {Pose:{Head:[10f,0f,0f]}}
execute as @e[type=armor_stand,tag=ReusParts,tag=Body1] run data merge entity @s {Pose:{Head:[-10f,0f,0f]}}
execute as @e[type=armor_stand,tag=ReusParts,tag=LegL0] run data merge entity @s {Pose:{Head:[5f,0f,-10f]}}
execute as @e[type=armor_stand,tag=ReusParts,tag=LegR0] run data merge entity @s {Pose:{Head:[5f,0f,10f]}}
execute as @e[type=armor_stand,tag=ReusParts,tag=LegL1] run data merge entity @s {Pose:{Head:[5f,0f,-10f]}}
execute as @e[type=armor_stand,tag=ReusParts,tag=LegR1] run data merge entity @s {Pose:{Head:[5f,0f,10f]}}
execute as @e[type=armor_stand,tag=ReusParts,tag=LegL2] run data merge entity @s {Pose:{Head:[5f,-10f,0f]}}
execute as @e[type=armor_stand,tag=ReusParts,tag=LegR2] run data merge entity @s {Pose:{Head:[5f,10f,0f]}}
execute as @e[type=armor_stand,tag=ReusParts,tag=Tail0] run data merge entity @s {Pose:{Head:[0f,0f,0f]}}
execute as @e[type=armor_stand,tag=ReusParts,tag=Tail1] run data merge entity @s {Pose:{Head:[-5f,0f,0f]}}
execute as @e[type=armor_stand,tag=ReusParts,tag=Tail2] run data merge entity @s {Pose:{Head:[-10f,0f,0f]}}
execute as @e[type=armor_stand,tag=ReusParts,tag=WingL0] run data merge entity @s {Pose:{Head:[75f,0f,-10f]}}
execute as @e[type=armor_stand,tag=ReusParts,tag=WingR0] run data merge entity @s {Pose:{Head:[75f,0f,10f]}}
execute as @e[type=armor_stand,tag=ReusParts,tag=WingL1] run data merge entity @s {Pose:{Head:[75f,0f,10f]}}
execute as @e[type=armor_stand,tag=ReusParts,tag=WingR1] run data merge entity @s {Pose:{Head:[75f,0f,-10f]}}
execute as @e[type=armor_stand,tag=ReusParts,tag=WingL2] run data merge entity @s {Pose:{Head:[75f,0f,10f]}}
execute as @e[type=armor_stand,tag=ReusParts,tag=WingR2] run data merge entity @s {Pose:{Head:[75f,0f,-10f]}}

# 念のためここでinit
# tsb用init
    execute as @e[type=slime,tag=ReusHealth] run function mob_manager:init/

# ID割り振り
    scoreboard players set @e[type=slime,tag=MonsterParts,tag=ReusHealth] MhdpMonsterIndex 0
    scoreboard players set @e[type=slime,tag=MonsterParts,tag=ReusHealth,tag=HeadParts] MhdpPartsIndex 0
    scoreboard players set @e[type=slime,tag=MonsterParts,tag=ReusHealth,tag=BodyParts] MhdpPartsIndex 1
    scoreboard players set @e[type=slime,tag=MonsterParts,tag=ReusHealth,tag=LegParts] MhdpPartsIndex 2
    scoreboard players set @e[type=slime,tag=MonsterParts,tag=ReusHealth,tag=TailParts] MhdpPartsIndex 3