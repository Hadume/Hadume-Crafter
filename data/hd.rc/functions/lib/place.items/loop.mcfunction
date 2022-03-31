#> hd.rc:lib/place.items/loop
#
# インベントリーにアイテムを挿入
#
# @within function hd.rc:lib/place.items/
# @private

## アイテムをASに持たせる
	execute as @e[type=minecraft:armor_stand,tag=HdRcAS,distance=0] run data modify entity @s ArmorItems[3] set from storage hd.rc:lib PlaceItems1[-1]
## Slotを取得
	execute store result score $HdRc.lib.Slot HdRc.Temp run data get storage hd.rc:lib PlaceItems1[-1].Slot
## 
	execute if score $HdRc.lib.Slot HdRc.Temp matches -106 run item replace entity @s weapon.offhand from entity @e[type=minecraft:armor_stand,tag=HdRcAS,distance=0,limit=1] armor.head
	execute if score $HdRc.lib.Slot HdRc.Temp matches 0 run item replace entity @s hotbar.0 from entity @e[type=minecraft:armor_stand,tag=HdRcAS,distance=0,limit=1] armor.head
	execute if score $HdRc.lib.Slot HdRc.Temp matches 1 run item replace entity @s hotbar.1 from entity @e[type=minecraft:armor_stand,tag=HdRcAS,distance=0,limit=1] armor.head
	execute if score $HdRc.lib.Slot HdRc.Temp matches 2 run item replace entity @s hotbar.2 from entity @e[type=minecraft:armor_stand,tag=HdRcAS,distance=0,limit=1] armor.head
	execute if score $HdRc.lib.Slot HdRc.Temp matches 3 run item replace entity @s hotbar.3 from entity @e[type=minecraft:armor_stand,tag=HdRcAS,distance=0,limit=1] armor.head
	execute if score $HdRc.lib.Slot HdRc.Temp matches 4 run item replace entity @s hotbar.4 from entity @e[type=minecraft:armor_stand,tag=HdRcAS,distance=0,limit=1] armor.head
	execute if score $HdRc.lib.Slot HdRc.Temp matches 5 run item replace entity @s hotbar.5 from entity @e[type=minecraft:armor_stand,tag=HdRcAS,distance=0,limit=1] armor.head
	execute if score $HdRc.lib.Slot HdRc.Temp matches 6 run item replace entity @s hotbar.6 from entity @e[type=minecraft:armor_stand,tag=HdRcAS,distance=0,limit=1] armor.head
	execute if score $HdRc.lib.Slot HdRc.Temp matches 7 run item replace entity @s hotbar.7 from entity @e[type=minecraft:armor_stand,tag=HdRcAS,distance=0,limit=1] armor.head
	execute if score $HdRc.lib.Slot HdRc.Temp matches 8 run item replace entity @s hotbar.8 from entity @e[type=minecraft:armor_stand,tag=HdRcAS,distance=0,limit=1] armor.head
	execute if score $HdRc.lib.Slot HdRc.Temp matches 9 run item replace entity @s inventory.0 from entity @e[type=minecraft:armor_stand,tag=HdRcAS,distance=0,limit=1] armor.head
	execute if score $HdRc.lib.Slot HdRc.Temp matches 10 run item replace entity @s inventory.1 from entity @e[type=minecraft:armor_stand,tag=HdRcAS,distance=0,limit=1] armor.head
	execute if score $HdRc.lib.Slot HdRc.Temp matches 11 run item replace entity @s inventory.2 from entity @e[type=minecraft:armor_stand,tag=HdRcAS,distance=0,limit=1] armor.head
	execute if score $HdRc.lib.Slot HdRc.Temp matches 12 run item replace entity @s inventory.3 from entity @e[type=minecraft:armor_stand,tag=HdRcAS,distance=0,limit=1] armor.head
	execute if score $HdRc.lib.Slot HdRc.Temp matches 13 run item replace entity @s inventory.4 from entity @e[type=minecraft:armor_stand,tag=HdRcAS,distance=0,limit=1] armor.head
	execute if score $HdRc.lib.Slot HdRc.Temp matches 14 run item replace entity @s inventory.5 from entity @e[type=minecraft:armor_stand,tag=HdRcAS,distance=0,limit=1] armor.head
	execute if score $HdRc.lib.Slot HdRc.Temp matches 15 run item replace entity @s inventory.6 from entity @e[type=minecraft:armor_stand,tag=HdRcAS,distance=0,limit=1] armor.head
	execute if score $HdRc.lib.Slot HdRc.Temp matches 16 run item replace entity @s inventory.7 from entity @e[type=minecraft:armor_stand,tag=HdRcAS,distance=0,limit=1] armor.head
	execute if score $HdRc.lib.Slot HdRc.Temp matches 17 run item replace entity @s inventory.8 from entity @e[type=minecraft:armor_stand,tag=HdRcAS,distance=0,limit=1] armor.head
	execute if score $HdRc.lib.Slot HdRc.Temp matches 18 run item replace entity @s inventory.9 from entity @e[type=minecraft:armor_stand,tag=HdRcAS,distance=0,limit=1] armor.head
	execute if score $HdRc.lib.Slot HdRc.Temp matches 19 run item replace entity @s inventory.10 from entity @e[type=minecraft:armor_stand,tag=HdRcAS,distance=0,limit=1] armor.head
	execute if score $HdRc.lib.Slot HdRc.Temp matches 20 run item replace entity @s inventory.11 from entity @e[type=minecraft:armor_stand,tag=HdRcAS,distance=0,limit=1] armor.head
	execute if score $HdRc.lib.Slot HdRc.Temp matches 21 run item replace entity @s inventory.12 from entity @e[type=minecraft:armor_stand,tag=HdRcAS,distance=0,limit=1] armor.head
	execute if score $HdRc.lib.Slot HdRc.Temp matches 22 run item replace entity @s inventory.13 from entity @e[type=minecraft:armor_stand,tag=HdRcAS,distance=0,limit=1] armor.head
	execute if score $HdRc.lib.Slot HdRc.Temp matches 23 run item replace entity @s inventory.14 from entity @e[type=minecraft:armor_stand,tag=HdRcAS,distance=0,limit=1] armor.head
	execute if score $HdRc.lib.Slot HdRc.Temp matches 24 run item replace entity @s inventory.15 from entity @e[type=minecraft:armor_stand,tag=HdRcAS,distance=0,limit=1] armor.head
	execute if score $HdRc.lib.Slot HdRc.Temp matches 25 run item replace entity @s inventory.16 from entity @e[type=minecraft:armor_stand,tag=HdRcAS,distance=0,limit=1] armor.head
	execute if score $HdRc.lib.Slot HdRc.Temp matches 26 run item replace entity @s inventory.17 from entity @e[type=minecraft:armor_stand,tag=HdRcAS,distance=0,limit=1] armor.head
	execute if score $HdRc.lib.Slot HdRc.Temp matches 27 run item replace entity @s inventory.18 from entity @e[type=minecraft:armor_stand,tag=HdRcAS,distance=0,limit=1] armor.head
	execute if score $HdRc.lib.Slot HdRc.Temp matches 28 run item replace entity @s inventory.19 from entity @e[type=minecraft:armor_stand,tag=HdRcAS,distance=0,limit=1] armor.head
	execute if score $HdRc.lib.Slot HdRc.Temp matches 29 run item replace entity @s inventory.20 from entity @e[type=minecraft:armor_stand,tag=HdRcAS,distance=0,limit=1] armor.head
	execute if score $HdRc.lib.Slot HdRc.Temp matches 30 run item replace entity @s inventory.21 from entity @e[type=minecraft:armor_stand,tag=HdRcAS,distance=0,limit=1] armor.head
	execute if score $HdRc.lib.Slot HdRc.Temp matches 31 run item replace entity @s inventory.22 from entity @e[type=minecraft:armor_stand,tag=HdRcAS,distance=0,limit=1] armor.head
	execute if score $HdRc.lib.Slot HdRc.Temp matches 32 run item replace entity @s inventory.23 from entity @e[type=minecraft:armor_stand,tag=HdRcAS,distance=0,limit=1] armor.head
	execute if score $HdRc.lib.Slot HdRc.Temp matches 33 run item replace entity @s inventory.24 from entity @e[type=minecraft:armor_stand,tag=HdRcAS,distance=0,limit=1] armor.head
	execute if score $HdRc.lib.Slot HdRc.Temp matches 34 run item replace entity @s inventory.25 from entity @e[type=minecraft:armor_stand,tag=HdRcAS,distance=0,limit=1] armor.head
	execute if score $HdRc.lib.Slot HdRc.Temp matches 35 run item replace entity @s inventory.26 from entity @e[type=minecraft:armor_stand,tag=HdRcAS,distance=0,limit=1] armor.head
## データを削除
	data remove storage hd.rc:lib PlaceItems1[-1]
## ループ
	execute if data storage hd.rc:lib PlaceItems1[] run function hd.rc:lib/place.items/loop
