onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /rythmcontroller/BPM
add wave -noupdate /rythmcontroller/sample1_pattern
add wave -noupdate /rythmcontroller/sample2_pattern
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
quietly wave cursor active 0
configure wave -namecolwidth 212
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1000000000
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ms
update
WaveRestoreZoom {0 ps} {907 ps}
view wave 
wave clipboard store
wave create -driver freeze -pattern constant -value 0000000000111100 -range 15 0 -starttime 0sec -endtime 1sec sim:/rythmcontroller/BPM 
WaveExpandAll -1
wave create -driver freeze -pattern constant -value 1000100010001000 -range 15 0 -starttime 0sec -endtime 1sec sim:/rythmcontroller/sample1_pattern 
WaveExpandAll -1
wave create -driver freeze -pattern constant -value 0100010001000100 -range 15 0 -starttime 0sec -endtime 1sec sim:/rythmcontroller/sample2_pattern 
WaveExpandAll -1
WaveCollapseAll -1
wave clipboard restore
