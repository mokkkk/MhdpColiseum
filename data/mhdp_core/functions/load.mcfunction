

# Scoreboard定義

    # Mhdp基本処理用
        scoreboard objectives add MhdpCore dummy

    # プレイヤー各処理用
        scoreboard objectives add MhdpPlayerUid dummy
        scoreboard objectives add MhdpUsedCoas minecraft.used:carrot_on_a_stick
        scoreboard objectives add MhdpJump minecraft.custom:minecraft.jump
        scoreboard objectives add MhdpDropEnderEye dropped:ender_eye

        scoreboard objectives add MhdpBlightFire dummy

    # プレイヤータイマー用
        scoreboard objectives add MhdpTDamage dummy
        scoreboard objectives add MhdpTAvoid dummy
        scoreboard objectives add MhdpTSneakInterval dummy
        scoreboard objectives add MhdpTDeathAnimation dummy
        scoreboard objectives add MhdpTUsingItem dummy
        scoreboard objectives add MhdpTUsingCoasItem dummy

    # プレイヤー行動用
        scoreboard objectives add MhdpFuncSneakAvoid dummy

    # プレイヤー防具用
        scoreboard objectives add SkillLv dummy
        scoreboard objectives add MhdpPlayerDefence dummy
        scoreboard objectives add MhdpPlayerResistFire dummy
        scoreboard objectives add MhdpPlayerResistWater dummy
        scoreboard objectives add MhdpPlayerResistThunder dummy
        scoreboard objectives add MhdpPlayerResistIce dummy
        scoreboard objectives add MhdpPlayerResistDragon dummy

    # 武器処理用
        scoreboard objectives add MhdpStamina dummy
        scoreboard objectives add MhdpTStaminaPenalty dummy
        scoreboard objectives add MhdpWeaponCharge dummy
        scoreboard objectives add MhdpWeaponTimer dummy
        scoreboard objectives add MhdpWeaponDeactivateTimer dummy

    # モンスター処理用
        scoreboard objectives add AsaMatrix dummy
        scoreboard objectives add MhdpMonsterIndex dummy
        scoreboard objectives add MhdpPartsIndex dummy
        scoreboard objectives add MhdpPartsUid dummy

    # TSBライブラリ用
        scoreboard objectives add Global dummy
        scoreboard objectives add Temporary dummy
        scoreboard objectives add Const dummy
        scoreboard objectives add UserID dummy
        scoreboard objectives add AttackedEntity dummy
        scoreboard objectives add Lib dummy
        scoreboard players set $2 Const 2
        scoreboard players set $2^15 Const 32768
        scoreboard players set $2^16 Const 65536
        scoreboard players set $10 Const 10
        scoreboard players set $100 Const 100
        scoreboard players set $31743 Const 31743
        scoreboard players set $65536 Const 65536
        # 乱数値の設定
            #> Private
            # @private
                #declare tag Random
            summon minecraft:area_effect_cloud ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["Random"]}
            execute store result score $Random.Base Global run data get entity @e[tag=Random,limit=1] UUID[1]
            execute store result score $Random.Carry Global run data get entity @e[tag=Random,limit=1] UUID[3]
            kill @e[tag=Random,limit=1]

# item置き換え用
    forceload add -1 -1 1 1
    setblock 0 0 0 lime_shulker_box

# クエストデータ初期化
    # function mhdp_core:init/quest_data

# モンスター肉質初期化
    function mhdp_core:init/monster
