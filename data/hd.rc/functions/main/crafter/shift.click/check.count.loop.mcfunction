#> hd.rc:main/crafter/shift.click/check.count.loop
#
# 最大何回プレイヤーに完成アイテムを渡せるか確認する
#
# @within function hd.rc:main/crafter/shift.click/
# @private

## 素材アイテムのCountと、必要アイテム数を取得する
	execute store result score $HdRc.Count.0 HdRc.Temp run data get storage hd.rc:temp Materials[-10].Count
	execute store result score $HdRc.Count.1 HdRc.Temp run data get storage hd.rc:temp RecipeItems[-10].Count
## 素材アイテムのCount / 必要アイテムのCount を計算する
	scoreboard players operation $HdRc.Count.0 HdRc.Temp /= $HdRc.Count.1 HdRc.Temp
## 前に確認した計算より小さかったら、上書きする
	execute if score $HdRc.Count.0 HdRc.Temp < $HdRc.Least.Number HdRc.Temp run scoreboard players operation $HdRc.Least.Number HdRc.Temp = $HdRc.Count.0 HdRc.Temp
## 確認済みの素材アイテムと、必要アイテムを他の場所に移す
	data remove storage hd.rc:temp Materials[-1]
	data remove storage hd.rc:temp RecipeItems[-1]
## まだ確認してないアイテムがあったら、ループする
	execute if data storage hd.rc:temp Materials[-10] run function hd.rc:main/crafter/shift.click/check.count.loop
