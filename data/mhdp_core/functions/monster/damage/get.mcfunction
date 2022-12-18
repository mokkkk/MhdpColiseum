#> mhdp_core:monster/damage/get
#
# モンスターにダメージを与える 肉質取得

# モンスター特定
    # 配列コピー
        data modify storage array_util: Array set from storage mh_dp:monster_data List
    # 目標の添字を設定
        scoreboard players operation $Move ArrayUtilInput = @s MhdpMonsterIndex
    # 移動
        function array_util:api/move

# 部位特定
    # 配列コピー
        data modify storage mhdp_core:temp Temp.Array set from storage array_util: Array[-1]
        function array_util:api/revert
        data modify storage array_util: Array set from storage mhdp_core:temp Temp.Array
    # 目標の添字を設定
        scoreboard players operation $Move ArrayUtilInput = @s MhdpPartsIndex
    # 移動
        function array_util:api/move
    # 配列コピー
        data modify storage mhdp_core:temp Temp.Array set from storage array_util: Array[-1]
        function array_util:api/revert
        data modify storage array_util: Array set from storage mhdp_core:temp Temp.Array

# 物理肉質（[0,1,2]）
    # 目標の添字を設定
        execute store result score $Move ArrayUtilInput run data get storage mhdp_core:temp Temp.WeaponDamage.Type
        scoreboard players remove $Move ArrayUtilInput 1
    # 移動
        function array_util:api/move
    # 取得
        execute store result score #mhdp_temp_def MhdpCore run data get storage array_util: Array[-1]
    # 終了
        function array_util:api/revert

# 属性肉質（[3,4,5,6,7]）
    # 目標の添字を設定
        scoreboard players operation $Move ArrayUtilInput = #mhdp_temp_element_type MhdpCore
        scoreboard players add $Move ArrayUtilInput 2
    # 移動
        function array_util:api/move
    # 取得
        execute store result score #mhdp_temp_element_def MhdpCore run data get storage array_util: Array[-1]
    # 終了
        function array_util:api/revert
        data remove storage array_util: Array