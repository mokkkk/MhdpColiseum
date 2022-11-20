#> mhdp_core:player/death/check
#
# プレイヤー死亡時処理（advancements内） 体力確認
#declare tag PlyDamaged このtickにダメージを受けた

# ダメージ判定用タグ
    tag @s add PlyDamaged

# ダメージインターバルリセット
    scoreboard players set @s MhdpTDamageInterval 0

# 体力が0以下の場合，死亡とみなしてfunction実行
    execute if entity @s[nbt={Health:0.0f}] run function mhdp_core:player/death/advancements

# 終了
    advancement revoke @s only mhdp_core:player/hurt/entity_hurt_player