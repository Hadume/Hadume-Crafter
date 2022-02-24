#> hd.sct:recipes/book/make/loop
#
# データを設定
#
# @within function hd.sct:recipes/book/make/
# @private

## データを追加
	execute if data storage hd.sct:recipe_book NotYet[] run data modify storage hd.sct:recipe_book _[-1].Data append from storage hd.sct:recipe_book NotYet[0].Result
	execute if data storage hd.sct:recipe_book NotYet[] run data modify storage hd.sct:recipe_book _[-1].Data[-1].tag.HdSct set value 1b
	execute if data storage hd.sct:recipe_book NotYet[] run data modify storage hd.sct:recipe_book _[-1].Data[-1].tag.HdSctRecipe set from storage hd.sct:recipe_book NotYet[0].display
## 空白データを追加
	execute unless data storage hd.sct:recipe_book NotYet[] run data modify storage hd.sct:recipe_book _[-1].Data append value {id:"minecraft:black_stained_glass_pane",Count:1b,tag:{display:{Name:'{"text": ""}'},HdSct:1b}}
## Slotの調整
	execute if score $HdSct.Slot HdSct.Temp matches 4 run scoreboard players set $HdSct.Slot HdSct.Temp 8
	execute if score $HdSct.Slot HdSct.Temp matches 13 run scoreboard players set $HdSct.Slot HdSct.Temp 17
## Slotを代入
	execute store result storage hd.sct:recipe_book _[-1].Data[-1].Slot byte 1 run scoreboard players add $HdSct.Slot HdSct.Temp 1
## データを消す
	data remove storage hd.sct:recipe_book NotYet[0]
## ループ
	execute if score $HdSct.Slot HdSct.Temp matches ..21 run function hd.sct:recipes/book/make/loop
