onerror {exit -code 1}
vlib work
vlog -work work ShiftIzquierda.vo
vlog -work work Prueba.vwf.vt
vsim -novopt -c -t 1ps -L cyclonev_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate_ver -L altera_lnsim_ver work.ShiftIzquierda_vlg_vec_tst -voptargs="+acc"
vcd file -direction ShiftIzquierda.msim.vcd
vcd add -internal ShiftIzquierda_vlg_vec_tst/*
vcd add -internal ShiftIzquierda_vlg_vec_tst/i1/*
run -all
quit -f
