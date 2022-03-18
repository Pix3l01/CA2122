onerror {exit -code 1}
vlib work
vcom -work work Lab2.vho
vcom -work work two_mux_wave.vwf.vht
vsim -c -t 1ps -sdfmax two_mux_vhd_vec_tst/i1=Lab2_vhd.sdo -L cycloneive -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.two_mux_vhd_vec_tst
vcd file -direction Lab2.msim.vcd
vcd add -internal two_mux_vhd_vec_tst/*
vcd add -internal two_mux_vhd_vec_tst/i1/*
proc simTimestamp {} {
    echo "Simulation time: $::now ps"
    if { [string equal running [runStatus]] } {
        after 2500 simTimestamp
    }
}
after 2500 simTimestamp
run -all
quit -f
