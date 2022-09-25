#> mhdp_core:declare
#
# declare用

# tag
    #declare tag PlyUsedCoas プレイヤーがニンジン棒を使用した
    #declare tag PlySneakStart プレイヤーがスニークを開始した
    #declare tag PlySneakCurrent プレイヤーがスニーク中である
    #declare tag PlySneakEnd プレイヤーがスニークを解除した
    #declare tag PlyUsingEyeStart プレイヤーがエンダーアイを使用開始した
    #declare tag PlyUsingEyeCurrent プレイヤーがエンダーアイ使用中
    #declare tag PlyUsingEyeEnd プレイヤーがエンダーアイ使用を解除した
    #declare tag PlyDroppedEnderEye プレイヤーがエンダーアイを投げ捨てた

    #declare tag PlySneakAvoidFunc プレイヤースニーク回避実行中

    #declare tag PlyWeaponDrawing プレイヤー武器抜刀中

# storage
    #declare storage mh_dp:status MHDP各種ステータス保存用

# objective
    #declare objective MhdpPlayerUid プレイヤーUID
    #declare objective MhdpUsedCoas プレイヤーニンジン棒クリック検知
    #declare objective MhdpJump プレイヤージャンプ検知
    #declare objective MhdpDropEnderEye プレイヤーエンダーアイ投げ捨て検知
    #declare objective MhdpTDamage プレイヤーダメージ後の無敵時間に使用
    #declare objective MhdpTAvoid プレイヤー回避無敵時間に使用
    #declare objective MhdpTSneakInterval プレイヤー連続スニーク検知用
    #declare objective MhdpFuncSneakAvoid スニーク回避実行用
