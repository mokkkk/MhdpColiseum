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
        data modify storage array_util: Array set from storage array_util: Array[-1]
    # 目標の添字を設定
        scoreboard players operation $Move ArrayUtilInput = @s MhdpPartsIndex
    # 移動
        function array_util:api/move
    # 配列コピー
        data modify storage array_util: Array set from storage array_util: Array[-1]

# 物理肉質
    execute store result score #mhdp_temp_def MhdpCore run data get storage array_util: Array[0]

# 属性肉質
    # 目標の添字を設定
        scoreboard players operation $Move ArrayUtilInput = #mhdp_element_temp MhdpCore
    # 移動
        function array_util:api/move
    # 取得
        execute store result score #mhdp_temp_element_def MhdpCore run data get storage array_util: Array[-1]
