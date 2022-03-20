#> hd.sct:sct/changed.items/shift.click/above.65/set.count.loop1
#
# 
#
# @within function hd.sct:sct/changed.items/shift.click/above.65/
# @private

## 完成アイテムをコピー
	data modify storage hd.sct:lib PlaceItems prepend from entity @e[type=minecraft:marker,tag=HdSctThis,distance=..0.001,limit=1] data.Using.Recipe.Result
## Countを代入
	execute store result storage hd.sct:lib PlaceItems[0].Count byte 1 run scoreboard players get $HdSct.Count.Max HdSct.Temp
## Countを減らす
	scoreboard players operation $HdSct.Result.Count HdSct.Temp -= $HdSct.Count.Max HdSct.Temp
## Countを代入２
#tellraw @a {"score":{"name": "$HdSct.Result.Count","objective": "HdSct.Temp"}}
	execute if score $HdSct.Result.Count HdSct.Temp matches ..-1 store result score $HdSct.Count.0 HdSct.Temp run data get storage hd.sct:lib PlaceItems[0].Count
	execute if score $HdSct.Result.Count HdSct.Temp matches ..-1 store result storage hd.sct:lib PlaceItems[0].Count byte 1 run scoreboard players operation $HdSct.Count.0 HdSct.Temp += $HdSct.Result.Count HdSct.Temp
#tellraw @a {"score":{"name": "$HdSct.Result.Count","objective": "HdSct.Temp"}}

## 渡せたらループ
	execute if score $HdSct.Result.Count HdSct.Temp matches 1.. run function hd.sct:sct/changed.items/shift.click/above.65/set.count.loop1
