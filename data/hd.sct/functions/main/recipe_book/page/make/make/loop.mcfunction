#> hd.sct:main/recipe_book/page/make/make/loop
#
# データを設定
#
# @within function hd.sct:main/recipe_book/page/make/
# @private

## データを追加
	execute if data storage hd.sct:recipe_book NotYet[] run function hd.sct:main/recipe_book/page/make/make/if.not_yet
## 空白データを追加
	execute unless data storage hd.sct:recipe_book NotYet[] run data modify storage hd.sct:recipe_book _[-1].Data append value {id:"minecraft:black_stained_glass_pane",Count:1b,tag:{display:{Name:'{"text": ""}'},HdSct:{}}}
## Slotの調整
	execute if score $HdSct.Slot HdSct.Temp matches 4..13 unless score $HdSct.Slot HdSct.Temp matches 5..12 run scoreboard players add $HdSct.Slot HdSct.Temp 4
## Slotを代入
	execute store result storage hd.sct:recipe_book _[-1].Data[-1].Slot byte 1 run scoreboard players add $HdSct.Slot HdSct.Temp 1
## データを消す
	data remove storage hd.sct:recipe_book NotYet[0]
## ループ
	execute if score $HdSct.Slot HdSct.Temp matches ..21 run function hd.sct:main/recipe_book/page/make/make/loop
