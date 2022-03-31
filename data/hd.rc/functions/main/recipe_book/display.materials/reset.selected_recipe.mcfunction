#> hd.rc:main/recipe_book/display.materials/reset.selected_recipe
#
# 選択したレシピのデータを削除
#
# @within function hd.rc:main/recipe_book/display.materials/

## 
	data remove storage hd.rc:temp RecipesCopy[{tag:{HdRc:{Recipe:{Selected:1b}}}}].tag.display.Lore[-1]
	data remove storage hd.rc:temp RecipesCopy[{tag:{HdRc:{Recipe:{Selected:1b}}}}].tag.HdRc.Recipe.Items[].tag.HdRc
	data remove storage hd.rc:temp RecipesCopy[{tag:{HdRc:{Recipe:{Selected:1b}}}}].tag.HdRc.Recipe.Selected
