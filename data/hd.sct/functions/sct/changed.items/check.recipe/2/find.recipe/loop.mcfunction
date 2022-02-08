#> hd.sct:sct/changed.items/check.recipe/2/find.recipe/loop
#
# レシピを確認するための準備
#
# @within function hd.sct:sct/changed.items/check.recipe/2/
# @private

# 素材アイテムに仮アイテムを追加
	data modify storage hd.sct:temp ItemsCopy append from storage hd.sct: Blank[]
# AnywhereTag が無かったら、仮アイテムを入れる
	execute unless data storage hd.sct:temp RecipesCopy[-1].Options.Anywhere run data modify storage hd.sct:temp RecipesCopy[-1].Items append from storage hd.sct: Blank[]
# 確認
	execute if data storage hd.sct:temp RecipesCopy[-1].Options.Mirror_VERT run function hd.sct:sct/changed.items/check.recipe/2/find.recipe/mirror/x/
	execute if data storage hd.sct:temp RecipesCopy[-1].Options.Mirror_HOR run function hd.sct:sct/changed.items/check.recipe/2/find.recipe/mirror/z/
	execute if data storage hd.sct:temp RecipesCopy[-1].Options.Anywhere unless data storage hd.sct:temp RecipesCopy[-1].Options.Mirror_VERT unless data storage hd.sct:temp RecipesCopy[-1].Options.Mirror_HOR run function hd.sct:sct/changed.items/check.recipe/2/find.recipe/anywhere/
	execute unless data storage hd.sct:temp RecipesCopy[-1].Options.Anywhere unless data storage hd.sct:temp RecipesCopy[-1].Options.Mirror_VERT unless data storage hd.sct:temp RecipesCopy[-1].Options.Mirror_HOR run function hd.sct:sct/changed.items/check.recipe/2/find.recipe/normal.loop
# データを消す
	execute if score $HdSct.Same.Recipe HdSct.Temp matches 1 run data remove storage hd.sct:temp RecipesCopy[-1]
# データを戻しておく
	data remove storage hd.sct:temp ItemsCopy[{_:1b}]
# まだ確認するデータがあったら、ループさせる
	execute if data storage hd.sct:temp RecipesCopy[] if score $HdSct.Same.Recipe HdSct.Temp matches 1 run function hd.sct:sct/changed.items/check.recipe/2/find.recipe/loop
