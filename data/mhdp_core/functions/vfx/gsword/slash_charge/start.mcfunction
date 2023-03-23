#> mhdp_core:vfx/gsword/slash_charge
#
# 大剣 溜め斬りエフェクト表示

# 表示用marker
    execute rotated ~ 0 positioned ^1.4 ^2 ^ run summon armor_stand ~ ~ ~ {Marker:1b,Small:1b,Silent:1b,Invisible:1b,Tags:["VfxStand","VfxGswordSc","MonsterShot","Start"],CustomNameVisible:1b,CustomName:'[{"text":"#","font":"mhdp"},{"text":"0","font":"effect/slash_gsword_charge"},{"text":"#","font":"mhdp"}]'}
    execute as @e[type=armor_stand,tag=VfxGswordSc,tag=Start] positioned as @s run tp @s ~ ~ ~ ~ 0
    tag @e[type=armor_stand,tag=VfxGswordSc,tag=Start] remove Start