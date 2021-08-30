onerror {exit -code 1}
vlib work
vlog -work work Andtota.vo
vlog -work work Prueba.vwf.vt
vsim -novopt -c -t 1ps -L cyclonev_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate_ver -L altera_lnsim_ver work.Andtota32_1_vlg_vec_tst -voptargs="+acc"
vcd file -direction Andtota.msim.vcd
vcd add -internal Andtota32_1_vlg_vec_tst/*
vcd add -internal Andtota32_1_vlg_vec_tst/i1/*
run -all
quit -f
