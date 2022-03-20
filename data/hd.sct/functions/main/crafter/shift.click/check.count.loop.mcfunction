#> hd.sct:main/crafter/shift.click/check.count.loop
#
# 最大何回プレイヤーに完成アイテムを渡せるか確認する
#
# @within function hd.sct:main/crafter/shift.click/
# @private

## 素材アイテムのCountと、必要アイテム数を取得する
	execute store result score $HdSct.Count.0 HdSct.Temp run data get storage hd.sct:temp Materials[-10].Count
	execute store result score $HdSct.Count.1 HdSct.Temp run data get storage hd.sct:temp RecipeItems[-10].Count
## 素材アイテムのCount / 必要アイテムのCount を計算する
	scoreboard players operation $HdSct.Count.0 HdSct.Temp /= $HdSct.Count.1 HdSct.Temp
## 前に確認した計算より小さかったら、上書きする
	execute if score $HdSct.Count.0 HdSct.Temp < $HdSct.Least.Number HdSct.Temp run scoreboard players operation $HdSct.Least.Number HdSct.Temp = $HdSct.Count.0 HdSct.Temp
## 確認済みの素材アイテムと、必要アイテムを他の場所に移す
	data remove storage hd.sct:temp Materials[-1]
	data remove storage hd.sct:temp RecipeItems[-1]
## まだ確認してないアイテムがあったら、ループする
	execute if data storage hd.sct:temp Materials[-10] run function hd.sct:main/crafter/shift.click/check.count.loop
