#> hd.rc:lib/shift.slot/side.1
#
# Slotを左に１ずらす
#
# @within function hd.rc:lib/shift.slot/

## 
	execute if data storage hd.rc:lib ShiftSlot[{Slot:2b}] run data modify storage hd.rc:lib ShiftSlot[{Slot:2b}].Slot set value 1b
	execute if data storage hd.rc:lib ShiftSlot[{Slot:11b}] run data modify storage hd.rc:lib ShiftSlot[{Slot:11b}].Slot set value 10b
	execute if data storage hd.rc:lib ShiftSlot[{Slot:20b}] run data modify storage hd.rc:lib ShiftSlot[{Slot:20b}].Slot set value 19b

	execute if data storage hd.rc:lib ShiftSlot[{Slot:3b}] run data modify storage hd.rc:lib ShiftSlot[{Slot:3b}].Slot set value 2b
	execute if data storage hd.rc:lib ShiftSlot[{Slot:12b}] run data modify storage hd.rc:lib ShiftSlot[{Slot:12b}].Slot set value 11b
	execute if data storage hd.rc:lib ShiftSlot[{Slot:21b}] run data modify storage hd.rc:lib ShiftSlot[{Slot:21b}].Slot set value 20b
