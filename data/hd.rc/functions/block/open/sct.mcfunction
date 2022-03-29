#> hd.rc:block/open/sct
#
# 
#
# @within function hd.rc:block/open/

## SCTに鍵をかける
	data modify block ~ ~ ~ Lock set value "§§"
## 
	function hd.rc:main/ui/
## 
	data modify entity @s data.Using.Items set from block ~ ~ ~ Items
## 
	tag @s add HdSctUsing
## SCTの仮Tagを外す
	tag @s remove HdSctThis
