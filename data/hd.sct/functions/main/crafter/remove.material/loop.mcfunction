#> hd.sct:main/crafter/remove.material/loop
#
# アイテムのCountを減らす
#
# @within function hd.sct:main/crafter/remove.material/as
# @private

## Countを取得
	execute store result score $HdSct.Count.1 HdSct.Temp run data get storage hd.sct:temp Materials[-10].Count
	execute store result score $HdSct.Count.2 HdSct.Temp run data get storage hd.sct:temp RecipeItemsCopy[-10].Count
## 一括で渡したら
	execute if score $HdSct.Least.Number HdSct.Temp matches 1.. run scoreboard players operation $HdSct.Count.2 HdSct.Temp *= $HdSct.Least.Number HdSct.Temp
## アイテムを減らさない
	data modify entity @s HandItems[0] set from storage hd.sct:temp Materials[-10]
	execute if predicate hd.sct:not.remove/_ run function hd.sct:main/crafter/remove.material/not.remove
## Countを減らして、代入
	execute store result storage hd.sct:temp Materials[-10].Count byte 1 run scoreboard players operation $HdSct.Count.1 HdSct.Temp -= $HdSct.Count.2 HdSct.Temp
## データを消す
	data remove storage hd.sct:temp Materials[-1]
	data remove storage hd.sct:temp RecipeItemsCopy[-1]
## まだデータがあったらループ
	execute if data storage hd.sct:temp Materials[-10] run function hd.sct:main/crafter/remove.material/loop
