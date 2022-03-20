#> hd.sct:add.recipes/
#
# レシピを追加０
#
# @within * ***

#> ScoreHolder
# @within function hd.sct:add.recipes/**
 #declare score_holder $HdSct.List
 #declare score_holder $HdSct.Element
 #declare score_holder $HdSct.Succeed
 #declare score_holder $HdSct.Fail
## 
	function hd.sct:add.recipes/1.loop
## レシピ追加の情報を表示
	execute if score $HdSct.Succeed HdSct.Temp matches 1.. run tellraw @a [{"storage": "hd.sct:","nbt": "tellrawName"},{"text": " "},{"score": {"name": "$HdSct.Succeed","objective": "HdSct.Temp"},"color": "green","bold": true},{"text": "個","color": "green","bold": true},{"text": "のレシピが追加されました。"}]
	execute if score $HdSct.Fail HdSct.Temp matches 1.. run tellraw @a [{"storage": "hd.sct:","nbt": "tellrawName"},{"text": " "},{"score": {"name": "$HdSct.Fail","objective": "HdSct.Temp"},"color": "red","bold": true},{"text": "個","color": "red","bold": true},{"text": "のレシピが追加できませんでした。\n"},{"storage": "hd.sct:","nbt": "tellrawName"},{"text": " "},{"text": "/data get storage hd.sct: FailRecipes","clickEvent": {"action": "suggest_command","value": "/data get storage hd.sct: FailRecipes"},"color": "yellow"},{"text": "\n"},{"storage": "hd.sct:","nbt": "tellrawName"},{"text": " よりレシピがあっているかご確認ください。"}]
## 
	function hd.sct:main/recipe_book/reset/
## 一時使用Storageをリセット
	data remove storage hd.sct:temp AddRecipe
	execute if data storage hd.sct:lib ShiftSlot run data remove storage hd.sct:lib ShiftSlot
	data remove storage hd.sct: AddRecipes
## 一時使用ScoreHolderをリセット
	execute if score $HdSct.List HdSct.Temp matches ..2147483647 run scoreboard players reset $HdSct.List
	execute if score $HdSct.Element HdSct.Temp matches ..2147483647 run scoreboard players reset $HdSct.Element
	execute if score $HdSct.Succeed HdSct.Temp matches ..2147483647 run scoreboard players reset $HdSct.Succeed
	execute if score $HdSct.Fail HdSct.Temp matches ..2147483647 run scoreboard players reset $HdSct.Fail
