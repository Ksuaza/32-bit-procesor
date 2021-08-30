onerror {exit -code 1}
vlib work
vlog -work work Nors.vo
vlog -work work Prueba.vwf.vt
vsim -novopt -c -t 1ps -L cyclonev_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate_ver -L altera_lnsim_ver work.Zero_vlg_vec_tst -voptargs="+acc"
vcd file -direction Nors.msim.vcd
vcd add -internal Zero_vlg_vec_tst/*
vcd add -internal Zero_vlg_vec_tst/i1/*
run -all
quit -f
