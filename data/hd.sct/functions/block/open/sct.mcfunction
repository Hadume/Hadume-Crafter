#> hd.sct:block/open/sct
#
# 
#
# @within function hd.sct:block/open/

## SCTに鍵をかける
	data modify block ~ ~ ~ Lock set value "§§"
## 
	function hd.sct:block/ui/
## 
	data modify entity @s data.Using.Items set from block ~ ~ ~ Items
## 
	tag @s add HdSctUsing
## SCTの仮Tagを外す
	tag @s remove HdSctThis
