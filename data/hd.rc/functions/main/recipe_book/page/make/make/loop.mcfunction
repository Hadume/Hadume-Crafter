#> hd.rc:main/recipe_book/page/make/make/loop
#
# データを設定
#
# @within function hd.rc:main/recipe_book/page/make/
# @private

## データを追加
	execute if data storage hd.rc:recipe_book NotYet[] run function hd.rc:main/recipe_book/page/make/make/if.not_yet
## 空白データを追加
	execute unless data storage hd.rc:recipe_book NotYet[] run data modify storage hd.rc:recipe_book _[-1].Data append value {id:"minecraft:black_stained_glass_pane",Count:1b,tag:{display:{Name:'{"text": ""}'},HdRc:{}}}
## Slotを調整
	execute if score $HdRc.Slot HdRc.Temp matches 4..13 unless score $HdRc.Slot HdRc.Temp matches 5..12 run scoreboard players add $HdRc.Slot HdRc.Temp 4
## Slotを代入
	execute store result storage hd.rc:recipe_book _[-1].Data[-1].Slot byte 1 run scoreboard players add $HdRc.Slot HdRc.Temp 1
## データを削除
	data remove storage hd.rc:recipe_book NotYet[0]
## ループ
	execute if score $HdRc.Slot HdRc.Temp matches ..21 run function hd.rc:main/recipe_book/page/make/make/loop
