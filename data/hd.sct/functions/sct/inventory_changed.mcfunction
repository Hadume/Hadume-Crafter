#> hd.sct:sct/inventory_changed
#
# SCTを見ているプレイヤーがインベントリーを変えたら
#
# @within advancement hd.sct:inventory_changed

## 進捗を剥奪
	advancement revoke @s only hd.sct:inventory_changed
## 見ているSCTの個人ストレージを呼ぶ
	tag @s add HdSctThis
	execute as @e[type=minecraft:armor_stand,tag=HdSctUsing,distance=..6] if score @s HdSct.ID = @a[tag=HdSctThis,distance=0,limit=1] HdSct.ID run function #oh_my_dat:please
	tag @s remove HdSctThis
## 完成アイテムを渡す
## ストレージにインベントリーを保存
	data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].HdSct.Using.Inventory set from entity @s Inventory
