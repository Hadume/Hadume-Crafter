#> hd.sct:sct/changed.items/remove.material/loop
#
# アイテムのCountを減らす
#
# @within function hd.sct:sct/changed.items/remove.material/main
# @private

## Countを取得
	execute store result score $HdSct.Count.1 HdSct.Temp run data get storage hd.sct:temp Materials[-10].Count
	execute store result score $HdSct.Count.2 HdSct.Temp run data get entity @e[predicate=hd.sct:storage,limit=1] data.Using.Recipe.Items[-10].Count
## 一括で渡したら
	execute if score $HdSct.Least.Number HdSct.Temp matches 1.. run scoreboard players operation $HdSct.Count.2 HdSct.Temp *= $HdSct.Least.Number HdSct.Temp
## アイテムを減らさない
	data modify entity @s HandItems[0] set from storage hd.sct:temp Materials[-10]
	execute if predicate hd.sct:not.remove/in.bottle run data modify storage hd.sct:temp Materials[-10] merge value {id:"minecraft:glass_bottle",Count:1b}
	execute if predicate hd.sct:not.remove/in.bowl run data modify storage hd.sct:temp Materials[-10] merge value {id:"minecraft:bowl",Count:1b}
	execute if predicate hd.sct:not.remove/in.bucket run data modify storage hd.sct:temp Materials[-10] merge value {id:"minecraft:bucket",Count:1b}
	execute if predicate hd.sct:not.remove/_ run scoreboard players set $HdSct.Count.2 HdSct.Temp 0
## Countを減らして、代入
	execute store result storage hd.sct:temp Materials[-10].Count byte 1 run scoreboard players operation $HdSct.Count.1 HdSct.Temp -= $HdSct.Count.2 HdSct.Temp
## データを消す
	data remove storage hd.sct:temp Materials[-1]
	data remove entity @e[predicate=hd.sct:storage,limit=1] data.Using.Recipe.Items[-1]
## まだデータがあったらループ
	execute if data storage hd.sct:temp Materials[-10] run function hd.sct:sct/changed.items/remove.material/loop
