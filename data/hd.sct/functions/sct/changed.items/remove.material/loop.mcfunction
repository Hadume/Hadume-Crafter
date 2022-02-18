#> hd.sct:sct/changed.items/remove.material/loop
#
# アイテムのCountを減らす
#
# @within function hd.sct:sct/changed.items/remove.material/main
# @private

## Countを取得
	execute store result score $HdSct.Count.1 HdSct.Temp run data get storage hd.sct:temp Materials[-10].Count
	execute store result score $HdSct.Count.2 HdSct.Temp run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].HdSct.Using.Recipe.Items[-10].Count
## 一括で渡したら
	execute if score $HdSct.Least.Number HdSct.Temp matches 1.. run scoreboard players operation $HdSct.Count.2 HdSct.Temp *= $HdSct.Least.Number HdSct.Temp
## Countを減らして、代入
	execute store result storage hd.sct:temp Materials[-10].Count byte 1 run scoreboard players operation $HdSct.Count.1 HdSct.Temp -= $HdSct.Count.2 HdSct.Temp
## データを消す
	data remove storage hd.sct:temp Materials[-1]
	data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].HdSct.Using.Recipe.Items[-1]
## まだデータがあったらループ
	execute if data storage hd.sct:temp Materials[-10] run function hd.sct:sct/changed.items/remove.material/loop
