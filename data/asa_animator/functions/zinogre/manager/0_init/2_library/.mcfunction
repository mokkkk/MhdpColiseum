#> asa_animator:zinogre/manager/0_init/2_library/
#
# 雷狼竜 TSBライブラリ用init処理

# tsb用init
    execute as @e[type=slime,tag=ZinogreHealth] run function mob_manager:init/

# 部位判定用ID割り振り
    scoreboard players set @e[type=slime,tag=MonsterParts,tag=ZinogreHealth] MhdpMonsterIndex 1
    scoreboard players set @e[type=slime,tag=MonsterParts,tag=ZinogreHealth,tag=HeadParts] MhdpPartsIndex 0
    scoreboard players set @e[type=slime,tag=MonsterParts,tag=ZinogreHealth,tag=BodyParts] MhdpPartsIndex 1
    scoreboard players set @e[type=slime,tag=MonsterParts,tag=ZinogreHealth,tag=ArmLParts] MhdpPartsIndex 2
    scoreboard players set @e[type=slime,tag=MonsterParts,tag=ZinogreHealth,tag=ArmRParts] MhdpPartsIndex 2
    scoreboard players set @e[type=slime,tag=MonsterParts,tag=ZinogreHealth,tag=LegParts] MhdpPartsIndex 3
    scoreboard players set @e[type=slime,tag=MonsterParts,tag=ZinogreHealth,tag=TailParts] MhdpPartsIndex 4
