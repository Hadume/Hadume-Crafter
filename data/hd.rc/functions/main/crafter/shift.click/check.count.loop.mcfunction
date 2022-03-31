#> hd.rc:main/crafter/shift.click/check.count.loop
#
# 成アイテムを何回渡せるか確認
#
# @within function hd.rc:main/crafter/shift.click/
# @private

## 素材アイテムのCountとレシピアイテムのCountを取得
	execute store result score $HdRc.Count.0 HdRc.Temp run data get storage hd.rc:temp Materials[-10].Count
	execute store result score $HdRc.Count.1 HdRc.Temp run data get storage hd.rc:temp RecipeItems[-10].Count
## 素材アイテムのCount / レシピアイテムのCount を計算
	scoreboard players operation $HdRc.Count.0 HdRc.Temp /= $HdRc.Count.1 HdRc.Temp
## 前の計算より小さかったら、上書き
	execute if score $HdRc.Count.0 HdRc.Temp < $HdRc.Least.Number HdRc.Temp run scoreboard players operation $HdRc.Least.Number HdRc.Temp = $HdRc.Count.0 HdRc.Temp
## データを移動
	data remove storage hd.rc:temp Materials[-1]
	data remove storage hd.rc:temp RecipeItems[-1]
## ループ
	execute if data storage hd.rc:temp Materials[-10] run function hd.rc:main/crafter/shift.click/check.count.loop
