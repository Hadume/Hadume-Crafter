#> hd.rc:add.recipes/
#
# レシピを追加０
#
# @within * ***

#> ScoreHolder
# @within function hd.rc:add.recipes/**
 #declare score_holder $HdRc.List
 #declare score_holder $HdRc.Element
 #declare score_holder $HdRc.Succeed
 #declare score_holder $HdRc.Fail
## 
	execute if data storage hd.rc: AddRecipes[] run function hd.rc:add.recipes/1.loop
## レシピ追加の情報を表示
	execute if score $HdRc.Succeed HdRc.Temp matches 1.. run tellraw @a [{"storage": "hd.rc:","nbt": "tellrawName"},{"text": " "},{"score": {"name": "$HdRc.Succeed","objective": "HdRc.Temp"},"color": "green","bold": true},{"text": "個","color": "green","bold": true},{"text": "のレシピが追加されました。"}]
	execute if score $HdRc.Fail HdRc.Temp matches 1.. run tellraw @a [{"storage": "hd.rc:","nbt": "tellrawName"},{"text": " "},{"score": {"name": "$HdRc.Fail","objective": "HdRc.Temp"},"color": "red","bold": true},{"text": "個","color": "red","bold": true},{"text": "のレシピが追加できませんでした。\n"},{"storage": "hd.rc:","nbt": "tellrawName"},{"text": " "},{"text": "/data get storage hd.rc: FailRecipes","clickEvent": {"action": "suggest_command","value": "/data get storage hd.rc: FailRecipes"},"color": "yellow"},{"text": "\n"},{"storage": "hd.rc:","nbt": "tellrawName"},{"text": " よりレシピがあっているかご確認ください。"}]
## 
	function hd.rc:main/recipe_book/reset/
## 一時使用Storageをリセット
	data remove storage hd.rc:temp AddRecipe
	execute if data storage hd.rc:lib ShiftSlot run data remove storage hd.rc:lib ShiftSlot
	data remove storage hd.rc: AddRecipes
## 一時使用ScoreHolderをリセット
	execute if score $HdRc.List HdRc.Temp matches ..2147483647 run scoreboard players reset $HdRc.List
	execute if score $HdRc.Element HdRc.Temp matches ..2147483647 run scoreboard players reset $HdRc.Element
	execute if score $HdRc.Succeed HdRc.Temp matches ..2147483647 run scoreboard players reset $HdRc.Succeed
	execute if score $HdRc.Fail HdRc.Temp matches ..2147483647 run scoreboard players reset $HdRc.Fail
