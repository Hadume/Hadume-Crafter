#> hd.rc:main/recipe_book/display.materials/
#
# レシピアイテムを表示
#
# @within function hd.rc:main/recipe_book/

## レシピアイテムSlotを削除
	function hd.rc:main/recipe_book/air
## 選択していたレシピのデータを削除
	execute if data storage hd.rc:temp RecipesCopy[{tag:{HdRc:{Recipe:{Selected:1b}}}}] run function hd.rc:main/recipe_book/display.materials/reset.selected_recipe
## レシピアイテムを消えないように
	data modify storage hd.rc:temp RecipesCopy[-15].tag.HdRc.Recipe.Items[].tag.HdRc set value {}
## 選択したレシピにデータを追加
	data modify storage hd.rc:temp RecipesCopy[-15].tag.display.Lore append value '{"text": "選択中", "color": "green", "italic": false}'
	data modify storage hd.rc:temp RecipesCopy[-15].tag.HdRc.Recipe.Selected set value 1b
## データを削除
	execute if data entity @s data.Using.RecipeBookTag run data remove entity @s data.Using.RecipeBookTag
## Tagを代入
	execute if data storage hd.rc:temp RecipesCopy[-15].tag.HdRc.Recipe.Items[].Tag run function hd.rc:main/recipe_book/display.materials/tag/
## 仮要素を削除
	execute if data storage hd.rc:temp RecipesCopy[{_:1b}] run data remove storage hd.rc:temp RecipesCopy[{_:1b}]
## データを上書き
	data modify entity @s data.Using.RecipeBook set from storage hd.rc:temp RecipesCopy
