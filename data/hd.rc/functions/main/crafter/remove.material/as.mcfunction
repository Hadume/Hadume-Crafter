#> hd.rc:main/crafter/remove.material/as
#
# AS
#
# @within function hd.rc:main/crafter/remove.material/main

## アイテムのCountを減らす
	function hd.rc:main/crafter/remove.material/loop
## アイテムを消す
	item replace entity @s weapon.mainhand with minecraft:air
## タグを外す
	tag @s remove HdRcThis
