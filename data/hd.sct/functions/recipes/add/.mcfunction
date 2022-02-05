#> hd.sct:recipes/add/
#
# レシピを追加０
#
# @within function hd.sct:tick

#> ScoreHolder
# @within function hd.sct:recipes/add/*
 #declare score_holder $HdSct.Succeed
 #declare score_holder $HdSct.Fail
## 
	function hd.sct:recipes/add/1.loop
## レシピ追加の情報を表示
	execute if score $HdSct.Succeed HdSct.Temp matches 1.. run tellraw @a [{"storage": "hd.sct:","nbt": "SCT.tellrawName"},{"text": " "},{"score": {"name": "$HdSct.Succeed","objective": "HdSct.Temp"},"color": "green","bold": true},{"text": "個","color": "green","bold": true},{"text": "のレシピが追加されました。"}]
	execute if score $HdSct.Fail HdSct.Temp matches 1.. run tellraw @a [{"storage": "hd.sct:","nbt": "SCT.tellrawName"},{"text": " "},{"score": {"name": "$HdSct.Fail","objective": "HdSct.Temp"},"color": "red","bold": true},{"text": "個","color": "red","bold": true},{"text": "のレシピが追加できませんでした。\n"},{"storage": "hd.sct:","nbt": "SCT.tellrawName"},{"text": " "},{"text": "/data get storage hd.sct: FailRecipes","clickEvent": {"action": "suggest_command","value": "/data get storage hd.sct: FailRecipes"},"color": "yellow"},{"text": "\n"},{"storage": "hd.sct:","nbt": "SCT.tellrawName"},{"text": " よりレシピがあっているかご確認ください。"}]
## 一時使用Storageをリセット
	data remove storage hd.sct:temp RecipeItems
	data remove storage hd.sct:lib ShiftSlot
	data remove storage hd.sct: AddRecipes
## 一時使用ScoreHolderをリセット
	scoreboard players reset $HdSct.Lists
	scoreboard players reset $HdSct.Elements
	scoreboard players reset $HdSct.Succeed
	scoreboard players reset $HdSct.Fail
