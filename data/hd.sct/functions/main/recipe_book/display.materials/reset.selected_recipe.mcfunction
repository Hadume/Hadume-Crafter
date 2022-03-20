#> hd.sct:main/recipe_book/display.materials/reset.selected_recipe
#
# 
#
# @within function hd.sct:main/recipe_book/display.materials/

## 
	data remove storage hd.sct:temp RecipesCopy[{tag:{HdSct:{Recipe:{Selected:1b}}}}].tag.display.Lore[-1]
	data remove storage hd.sct:temp RecipesCopy[{tag:{HdSct:{Recipe:{Selected:1b}}}}].tag.HdSct.Recipe.Items[].tag.HdSct
	data remove storage hd.sct:temp RecipesCopy[{tag:{HdSct:{Recipe:{Selected:1b}}}}].tag.HdSct.Recipe.Selected
