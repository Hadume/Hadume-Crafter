#> hd.rc:main/changed.items/
#
# 中身が変ってたら
#
# @within function hd.rc:main/using

## RC
	execute if entity @s[tag=!HdRcRM] run function hd.rc:main/changed.items/main
## RM
	execute if entity @s[tag=HdRcRM] run function hd.rc:recipe_maker/
## アイテムを削除
	clear @a #hd.rc:all.items{HdRc:{}}
