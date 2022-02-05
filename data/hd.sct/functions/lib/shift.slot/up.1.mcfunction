#> hd.sct:lib/shift.slot/up.1
#
# Slotを上に１ずらす
#
# @within function hd.sct:lib/shift.slot/

## 
	execute if data storage hd.sct:lib ShiftSlot[{Slot:10b}] run data modify storage hd.sct:lib ShiftSlot[{Slot:10b}].Slot set value 1b
	execute if data storage hd.sct:lib ShiftSlot[{Slot:11b}] run data modify storage hd.sct:lib ShiftSlot[{Slot:11b}].Slot set value 2b
	execute if data storage hd.sct:lib ShiftSlot[{Slot:12b}] run data modify storage hd.sct:lib ShiftSlot[{Slot:12b}].Slot set value 3b

	execute if data storage hd.sct:lib ShiftSlot[{Slot:19b}] run data modify storage hd.sct:lib ShiftSlot[{Slot:19b}].Slot set value 10b
	execute if data storage hd.sct:lib ShiftSlot[{Slot:20b}] run data modify storage hd.sct:lib ShiftSlot[{Slot:20b}].Slot set value 11b
	execute if data storage hd.sct:lib ShiftSlot[{Slot:21b}] run data modify storage hd.sct:lib ShiftSlot[{Slot:21b}].Slot set value 12b
