#> hd.rc:add.recipes/4/display/
#
# レシピブックでの表示を作成
#
# @within function hd.rc:add.recipes/4/

## displayと素材アイテムを同じに
	data modify storage hd.rc:temp Recipe.display append from storage hd.rc:temp Recipe.Items[]
## displayのSlotを調整
	execute if data storage hd.rc:temp Recipe.display[{Slot:1b}] run data modify storage hd.rc:temp Recipe.display[{Slot:1b}].Slot set value 6b
	execute if data storage hd.rc:temp Recipe.display[{Slot:2b}] run data modify storage hd.rc:temp Recipe.display[{Slot:2b}].Slot set value 7b
	execute if data storage hd.rc:temp Recipe.display[{Slot:3b}] run data modify storage hd.rc:temp Recipe.display[{Slot:3b}].Slot set value 8b
	execute if data storage hd.rc:temp Recipe.display[{Slot:10b}] run data modify storage hd.rc:temp Recipe.display[{Slot:10b}].Slot set value 15b
	execute if data storage hd.rc:temp Recipe.display[{Slot:11b}] run data modify storage hd.rc:temp Recipe.display[{Slot:11b}].Slot set value 16b
	execute if data storage hd.rc:temp Recipe.display[{Slot:12b}] run data modify storage hd.rc:temp Recipe.display[{Slot:12b}].Slot set value 17b
	execute if data storage hd.rc:temp Recipe.display[{Slot:19b}] run data modify storage hd.rc:temp Recipe.display[{Slot:19b}].Slot set value 24b
	execute if data storage hd.rc:temp Recipe.display[{Slot:20b}] run data modify storage hd.rc:temp Recipe.display[{Slot:20b}].Slot set value 25b
	execute if data storage hd.rc:temp Recipe.display[{Slot:21b}] run data modify storage hd.rc:temp Recipe.display[{Slot:21b}].Slot set value 26b
## 縦に揃える(縦２、縦３どちらでも使えるようにSlot:24bは確認してない)
	execute unless data storage hd.rc:temp Recipe.Options.Anywhere if data storage hd.rc:temp Recipe.display[{Slot:6b}] unless data storage hd.rc:temp Recipe.display[{Slot:7b}] unless data storage hd.rc:temp Recipe.display[{Slot:8b}] if data storage hd.rc:temp Recipe.display[{Slot:15b}] unless data storage hd.rc:temp Recipe.display[{Slot:16b}] unless data storage hd.rc:temp Recipe.display[{Slot:17b}] unless data storage hd.rc:temp Recipe.display[{Slot:25b}] unless data storage hd.rc:temp Recipe.display[{Slot:26b}] run function hd.rc:add.recipes/4/display/center.vert
## 横に揃える(横２、横３どちらでも使えるようにSlot:8bは確認してない)
	execute unless data storage hd.rc:temp Recipe.Options.Anywhere if data storage hd.rc:temp Recipe.display[{Slot:6b}] if data storage hd.rc:temp Recipe.display[{Slot:7b}] unless data storage hd.rc:temp Recipe.display[{Slot:15b}] unless data storage hd.rc:temp Recipe.display[{Slot:16b}] unless data storage hd.rc:temp Recipe.display[{Slot:17b}] unless data storage hd.rc:temp Recipe.display[{Slot:24b}] unless data storage hd.rc:temp Recipe.display[{Slot:25b}] unless data storage hd.rc:temp Recipe.display[{Slot:26b}] run function hd.rc:add.recipes/4/display/center.hor
