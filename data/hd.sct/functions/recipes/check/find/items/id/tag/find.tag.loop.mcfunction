#> hd.sct:recipes/check/find/items/id/tag/find.tag.loop
#
# 指定されたtagを探す
#
# @within function hd.sct:recipes/check/find/items/id/tag/
# @private

## 重ねる
	execute store success score $HdSct.Same.Recipe HdSct.Temp run data modify storage hd.sct:temp TagsCopy[-1].Name set from storage hd.sct:temp RecipesCopy[-1].Items[-10].Tag
## 違ったら、データを消す
	execute if score $HdSct.Same.Recipe HdSct.Temp matches 1 run data remove storage hd.sct:temp TagsCopy[-1]
## ループ
	execute if score $HdSct.Same.Recipe HdSct.Temp matches 1 if data storage hd.sct:temp TagsCopy[] run function hd.sct:recipes/check/find/items/id/tag/find.tag.loop
