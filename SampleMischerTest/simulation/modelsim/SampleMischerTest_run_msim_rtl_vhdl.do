transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Sciebo/THK/DTS/Drum_maschine/CodecTest/sampleMixer.vhd}

vcom -93 -work work {C:/Sciebo/THK/DTS/Drum_maschine/SampleMischerTest/simulation/modelsim/sampleMixerTB.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneive -L rtl_work -L work -voptargs="+acc"  sampleMixerTB

add wave *
view structure
view signals
run -all
