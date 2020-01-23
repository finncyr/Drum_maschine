transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Sciebo/THK/DTS/Drum_maschine/CodecTest {C:/Sciebo/THK/DTS/Drum_maschine/CodecTest/clock_generator.v}
vlog -vlog01compat -work work +incdir+C:/Sciebo/THK/DTS/Drum_maschine/CodecTest {C:/Sciebo/THK/DTS/Drum_maschine/CodecTest/audio_codec.v}
vlog -vlog01compat -work work +incdir+C:/Sciebo/THK/DTS/Drum_maschine/CodecTest {C:/Sciebo/THK/DTS/Drum_maschine/CodecTest/audio_and_video_config.v}
vlog -vlog01compat -work work +incdir+C:/Sciebo/THK/DTS/Drum_maschine/CodecTest {C:/Sciebo/THK/DTS/Drum_maschine/CodecTest/Altera_UP_SYNC_FIFO.v}
vlog -vlog01compat -work work +incdir+C:/Sciebo/THK/DTS/Drum_maschine/CodecTest {C:/Sciebo/THK/DTS/Drum_maschine/CodecTest/Altera_UP_Slow_Clock_Generator.v}
vlog -vlog01compat -work work +incdir+C:/Sciebo/THK/DTS/Drum_maschine/CodecTest {C:/Sciebo/THK/DTS/Drum_maschine/CodecTest/Altera_UP_I2C_AV_Auto_Initialize.v}
vlog -vlog01compat -work work +incdir+C:/Sciebo/THK/DTS/Drum_maschine/CodecTest {C:/Sciebo/THK/DTS/Drum_maschine/CodecTest/Altera_UP_I2C.v}
vlog -vlog01compat -work work +incdir+C:/Sciebo/THK/DTS/Drum_maschine/CodecTest {C:/Sciebo/THK/DTS/Drum_maschine/CodecTest/Altera_UP_Clock_Edge.v}
vlog -vlog01compat -work work +incdir+C:/Sciebo/THK/DTS/Drum_maschine/CodecTest {C:/Sciebo/THK/DTS/Drum_maschine/CodecTest/Altera_UP_Audio_Out_Serializer.v}
vlog -vlog01compat -work work +incdir+C:/Sciebo/THK/DTS/Drum_maschine/CodecTest {C:/Sciebo/THK/DTS/Drum_maschine/CodecTest/Altera_UP_Audio_In_Deserializer.v}
vlog -vlog01compat -work work +incdir+C:/Sciebo/THK/DTS/Drum_maschine/CodecTest {C:/Sciebo/THK/DTS/Drum_maschine/CodecTest/Altera_UP_Audio_Bit_Counter.v}
vcom -93 -work work {C:/Sciebo/THK/DTS/Drum_maschine/CodecTest/reg.vhd}
vcom -93 -work work {C:/Sciebo/THK/DTS/Drum_maschine/CodecTest/copy_module.vhd}
vcom -93 -work work {C:/Sciebo/THK/DTS/Drum_maschine/CodecTest/sine_package.vhd}
vcom -93 -work work {C:/Sciebo/THK/DTS/Drum_maschine/CodecTest/rythmcontroller.vhd}
vcom -93 -work work {C:/Sciebo/THK/DTS/Drum_maschine/CodecTest/sampleMixer.vhd}
vcom -93 -work work {C:/Sciebo/THK/DTS/Drum_maschine/CodecTest/CopySamples.vhd}
vcom -93 -work work {C:/Sciebo/THK/DTS/Drum_maschine/CodecTest/sine_wave.vhd}

vcom -93 -work work {C:/Sciebo/THK/DTS/Drum_maschine/CodecTest/simulation/modelsim/rythmControllerTB.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneive -L rtl_work -L work -voptargs="+acc"  rathmControllerTB

add wave *
view structure
view signals
run -all