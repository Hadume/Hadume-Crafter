#> hd.sct:lib/shift.slot/side.2
#
# Slotを左に２ずらす
#
# @within function hd.sct:lib/shift.slot/

## 
	execute if data storage hd.sct:lib ShiftSlot[{Slot:3b}] run data modify storage hd.sct:lib ShiftSlot[{Slot:3b}].Slot set value 1b
	execute if data storage hd.sct:lib ShiftSlot[{Slot:12b}] run data modify storage hd.sct:lib ShiftSlot[{Slot:12b}].Slot set value 10b
	execute if data storage hd.sct:lib ShiftSlot[{Slot:21b}] run data modify storage hd.sct:lib ShiftSlot[{Slot:21b}].Slot set value 19b
