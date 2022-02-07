#> hd.sct:block/lock/
#
# SCTに鍵をかける
#
# @within function hd.sct:sct/using

#> Tags
# @within function hd.sct:sct/*
# @within function hd.sct:block/lock/*
 #declare tag HdSct.Using
## 
	data modify block ~ ~ ~ Lock set value "§§"
## Tagを付ける
	tag @s add HdSct.Using
