#> hd.sct:main/recipe_book/page/make/
#
# レシピブックのページを作る
#
# @within function
#   hd.sct:main/recipe_book/open
#   hd.sct:main/recipe_book/page/change/next/make.page

#> ScoreHolder
# @private
# @within function hd.sct:main/recipe_book/reset/
 #declare score_holder $HdSct.Page
#> ScoreHolder
# @private
# @within function hd.sct:main/recipe_book/page/make/make/loop
 #declare score_holder $HdSct.Slot
#> Tags
# @private
 #declare tag HdSct.ChestMinecart
## ページデータを追加
	data modify storage hd.sct:recipe_book _ append value {}
## ページを設定
	execute store result storage hd.sct:recipe_book _[-1].Page int 1 run scoreboard players add $HdSct.Page HdSct.Global 1
## Slotの調整
	scoreboard players set $HdSct.Slot HdSct.Temp -1
## データを設定
	function hd.sct:main/recipe_book/page/make/make/loop
## 
	summon minecraft:chest_minecart ~ ~ ~ {Tags:["HdSct.ChestMinecart"]}

	data modify entity @e[type=minecraft:chest_minecart,tag=HdSct.ChestMinecart,distance=0,limit=1] Items append from storage hd.sct:recipe_book _[-1].Data[]
	data modify storage hd.sct:temp RecipeResults append from entity @e[type=minecraft:chest_minecart,tag=HdSct.ChestMinecart,distance=0,limit=1] Items[]

	execute unless data storage hd.sct:temp RecipeResults[{Slot:0b}] run data modify storage hd.sct:recipe_book _[-1].Data[{Slot:0b}] set value {Slot:0b,id:"minecraft:black_stained_glass_pane",Count:1b,tag:{display:{Name:'{"text": ""}'},HdSct:{}}}
	execute unless data storage hd.sct:temp RecipeResults[{Slot:1b}] run data modify storage hd.sct:recipe_book _[-1].Data[{Slot:1b}] set value {Slot:1b,id:"minecraft:black_stained_glass_pane",Count:1b,tag:{display:{Name:'{"text": ""}'},HdSct:{}}}
	execute unless data storage hd.sct:temp RecipeResults[{Slot:2b}] run data modify storage hd.sct:recipe_book _[-1].Data[{Slot:2b}] set value {Slot:2b,id:"minecraft:black_stained_glass_pane",Count:1b,tag:{display:{Name:'{"text": ""}'},HdSct:{}}}
	execute unless data storage hd.sct:temp RecipeResults[{Slot:3b}] run data modify storage hd.sct:recipe_book _[-1].Data[{Slot:3b}] set value {Slot:3b,id:"minecraft:black_stained_glass_pane",Count:1b,tag:{display:{Name:'{"text": ""}'},HdSct:{}}}
	execute unless data storage hd.sct:temp RecipeResults[{Slot:4b}] run data modify storage hd.sct:recipe_book _[-1].Data[{Slot:4b}] set value {Slot:4b,id:"minecraft:black_stained_glass_pane",Count:1b,tag:{display:{Name:'{"text": ""}'},HdSct:{}}}
	execute unless data storage hd.sct:temp RecipeResults[{Slot:9b}] run data modify storage hd.sct:recipe_book _[-1].Data[{Slot:9b}] set value {Slot:9b,id:"minecraft:black_stained_glass_pane",Count:1b,tag:{display:{Name:'{"text": ""}'},HdSct:{}}}
	execute unless data storage hd.sct:temp RecipeResults[{Slot:10b}] run data modify storage hd.sct:recipe_book _[-1].Data[{Slot:10b}] set value {Slot:10b,id:"minecraft:black_stained_glass_pane",Count:1b,tag:{display:{Name:'{"text": ""}'},HdSct:{}}}
	execute unless data storage hd.sct:temp RecipeResults[{Slot:11b}] run data modify storage hd.sct:recipe_book _[-1].Data[{Slot:11b}] set value {Slot:11b,id:"minecraft:black_stained_glass_pane",Count:1b,tag:{display:{Name:'{"text": ""}'},HdSct:{}}}
	execute unless data storage hd.sct:temp RecipeResults[{Slot:12b}] run data modify storage hd.sct:recipe_book _[-1].Data[{Slot:12b}] set value {Slot:12b,id:"minecraft:black_stained_glass_pane",Count:1b,tag:{display:{Name:'{"text": ""}'},HdSct:{}}}
	execute unless data storage hd.sct:temp RecipeResults[{Slot:13b}] run data modify storage hd.sct:recipe_book _[-1].Data[{Slot:13b}] set value {Slot:13b,id:"minecraft:black_stained_glass_pane",Count:1b,tag:{display:{Name:'{"text": ""}'},HdSct:{}}}
	execute unless data storage hd.sct:temp RecipeResults[{Slot:18b}] run data modify storage hd.sct:recipe_book _[-1].Data[{Slot:14b}] set value {Slot:18b,id:"minecraft:black_stained_glass_pane",Count:1b,tag:{display:{Name:'{"text": ""}'},HdSct:{}}}
	execute unless data storage hd.sct:temp RecipeResults[{Slot:19b}] run data modify storage hd.sct:recipe_book _[-1].Data[{Slot:19b}] set value {Slot:19b,id:"minecraft:black_stained_glass_pane",Count:1b,tag:{display:{Name:'{"text": ""}'},HdSct:{}}}
	execute unless data storage hd.sct:temp RecipeResults[{Slot:20b}] run data modify storage hd.sct:recipe_book _[-1].Data[{Slot:20b}] set value {Slot:20b,id:"minecraft:black_stained_glass_pane",Count:1b,tag:{display:{Name:'{"text": ""}'},HdSct:{}}}
	execute unless data storage hd.sct:temp RecipeResults[{Slot:21b}] run data modify storage hd.sct:recipe_book _[-1].Data[{Slot:21b}] set value {Slot:21b,id:"minecraft:black_stained_glass_pane",Count:1b,tag:{display:{Name:'{"text": ""}'},HdSct:{}}}
	execute unless data storage hd.sct:temp RecipeResults[{Slot:22b}] run data modify storage hd.sct:recipe_book _[-1].Data[{Slot:22b}] set value {Slot:22b,id:"minecraft:black_stained_glass_pane",Count:1b,tag:{display:{Name:'{"text": ""}'},HdSct:{}}}

	kill @e[type=minecraft:chest_minecart,tag=HdSct.ChestMinecart,distance=0]
## 一時使用ScoreHolderをリセット
	scoreboard players reset $HdSct.Slot
## 
	data remove storage hd.sct:temp RecipeResults
