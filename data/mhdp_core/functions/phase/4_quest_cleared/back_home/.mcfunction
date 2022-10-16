#> mhdp_core:phase/4_quest_cleared/back_home/
#
# Phase4_クエストクリア 帰還処理

# クエストIDを参照し，状態をクリアにする
    function mhdp_core:phase/4_quest_cleared/back_home/setup/quest_clear

# クエストデータ初期化
    data remove storage mh_dp:status GameStatus.Quest
    scoreboard players reset #mhdp_quest_id
    scoreboard players reset #mhdp_quest_monster_count
    scoreboard players reset #mhdp_quest_death_count
    scoreboard players reset #mhdp_quest_timer

# Phase変更
    data modify storage mh_dp:status GameStatus.Phase set value 0

# プレイヤーの状態リセット
    execute as @a run function mhdp_core:player/death/reset

# プレイヤーの武器をリセット
    execute as @a run function mhdp_core:phase/4_quest_cleared/back_home/setup/weapon

# プレイヤーの特殊装具をリセット(TO DO)
    # function ...

# プレイヤーを移動
    tp @a 266 63 204
    spawnpoint @a 266 63 204

# forceload解除
    # 大闘技場
    # -138 70 55 to -6 70 153
        execute positioned -138 70 55 run forceload remove ~ ~ 132 98

# MhdpWeapons処理用タグ削除
    tag @a remove PlyQuest
    tag @a remove MnsTarget
    tag @a remove PlyWeaponDrawing
    tag @a remove PlyWeaponDrawingSub

# モンスター消去処理
    execute as @e[type=armor_stand,tag=MonsterRoot] run function mhdp_core:phase/4_quest_cleared/back_home/setup/despawn_monster

# 報酬チェストコピー
    clone 152 89 156 153 89 156 255 63 198
# 報酬リセット
    clone 152 87 156 153 87 156 152 89 156 replace

# 再度アイテム回収
# 投げ捨てた武器は保存済みなのでkillする
    kill @e[type=item,nbt={Item:{tag:{MhdpWeapon:1b}}}]
    function mhdp_core:phase/2_quest_wait/prepare/pick_item

# 村人再配置
    function mhdp_core:phase/0_village/villager/
