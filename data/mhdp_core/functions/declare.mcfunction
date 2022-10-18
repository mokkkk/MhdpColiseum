#> mhdp_core:declare
#
# declare用

# tag
    #declare tag PlyDead プレイヤーが死亡した
    #declare tag PlyUsedCoas プレイヤーがニンジン棒を使用した
    #declare tag PlySneakStart プレイヤーがスニークを開始した
    #declare tag PlySneakCurrent プレイヤーがスニーク中である
    #declare tag PlySneakEnd プレイヤーがスニークを解除した
    #declare tag PlySneakDouble プレイヤーが2回スニークした
    #declare tag PlyUsingEyeStart プレイヤーがエンダーアイを使用開始した
    #declare tag PlyUsingEyeCurrent プレイヤーがエンダーアイ使用中
    #declare tag PlyUsingEyeEnd プレイヤーがエンダーアイ使用を解除した
    #declare tag PlyDroppedEnderEye プレイヤーがエンダーアイを投げ捨てた

    #declare tag PlySneakAvoidFunc プレイヤーステップ回避実行中
    #declare tag PlySneakAvoidLock プレイヤーステップ回避ロック中

    #declare tag PlyDeathAnimation プレイヤー死亡演出中

    # クエスト・武器処理関連
        #declare tag PlyQuest クエスト中判定用タグ
        #declare tag PlyWpnBow 所持武器判定用タグ（弓）
        #declare tag PlyWeaponDrawing プレイヤー武器抜刀中
        #declare tag PlyWeaponDrawingSub プレイヤーサブ武器抜刀中
        #declare tag PlyDrawAttack プレイヤー抜刀攻撃中

        #declare tag PlyArmorSuper スーパーアーマー中
        #declare tag PlyArmorHyper ハイパーアーマー中
        
        #declare tag MnsTarget モンスターのターゲットになりうる

    # 特殊装具処理関連
        #declare tag PlyItmImmovable 処理特殊装具判定用タグ（不動の装衣）

        #declare tag ItmUseImmovable 使用判定用タグ（不動の装衣）

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
    #declare objective MhdpFuncSneakAvoid ステップ回避実行用

    #declare objective MhdpWeaponExt 武器の特殊ゲージ管理用
    #declare objective MhdpWeaponCharge 武器の溜め攻撃管理用
    #declare objective MhdpWeaponTimer 武器の行動タイマー
    #declare objective MhdpWeaponDeactivateTimer 武器の行動未受付時間

    #declare objective MhdpTDeathAnimation プレイヤー死亡演出用タイマー
