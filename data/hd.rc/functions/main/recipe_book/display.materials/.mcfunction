#> hd.rc:main/recipe_book/display.materials/
#
# 
#
# @within function hd.rc:main/recipe_book/

## 
	function hd.rc:main/recipe_book/air
## 
	execute if data storage hd.rc:temp RecipesCopy[{tag:{HdRc:{Recipe:{Selected:1b}}}}] run function hd.rc:main/recipe_book/display.materials/reset.selected_recipe
## 
	data modify storage hd.rc:temp RecipesCopy[-15].tag.HdRc.Recipe.Items[].tag.HdRc set value {}
## 
	data modify storage hd.rc:temp RecipesCopy[-15].tag.display.Lore append value '{"text": "選択中", "color": "green", "italic": false}'
	data modify storage hd.rc:temp RecipesCopy[-15].tag.HdRc.Recipe.Selected set value 1b
## Tagを消す
	execute if data entity @s data.Using.RecipeBookTag run data remove entity @s data.Using.RecipeBookTag
## Tagがあったら、Tagを代入
	execute if data storage hd.rc:temp RecipesCopy[-15].tag.HdRc.Recipe.Items[].Tag run function hd.rc:main/recipe_book/display.materials/tag/
## 
	execute if data storage hd.rc:temp RecipesCopy[{_:1b}] run data remove storage hd.rc:temp RecipesCopy[{_:1b}]
## 
	data modify entity @s data.Using.RecipeBook set from storage hd.rc:temp RecipesCopy
