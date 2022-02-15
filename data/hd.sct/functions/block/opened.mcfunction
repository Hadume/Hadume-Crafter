#> hd.sct:block/opened
#
# 樽を開いたら
#
# @within advancement hd.sct:opened.barrel
say 樽を開いたよ
#> Tags
# @private
 #declare tag HdSct.This
## 進捗を再利用できるようにする
	advancement revoke @s only hd.sct:opened.barrel
## どの樽を開いたか特定
	tag @s add HdSct.This
	execute as @e[type=minecraft:armor_stand,tag=HdSct] unless score @s HdSct.ID matches ..2147483647 at @s if block ~ ~ ~ minecraft:barrel[open=true] facing entity @a[tag=HdSct.This] eyes positioned ^ ^ ^1 rotated as @a[tag=HdSct.This] positioned ^ ^ ^1 if entity @s[distance=..0.86602540378] run tag @s add HdSct.This
	tag @s remove HdSct.This
## SCTにIDを渡す
	scoreboard players operation @e[type=minecraft:armor_stand,tag=HdSct.This,sort=nearest,limit=1] HdSct.ID = @s HdSct.ID
## SCTに鍵をかける
	execute as @e[type=minecraft:armor_stand,tag=HdSct.This,scores={HdSct.ID=..2147483647}] at @s run data modify block ~ ~ ~ Lock set value "§§"
## SCTの仮Tagを外す
	execute as @e[type=minecraft:armor_stand,tag=HdSct.This] run tag @s remove HdSct.This
