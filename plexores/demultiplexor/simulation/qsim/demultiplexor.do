onerror {exit -code 1}
vlib work
vlog -work work demultiplexor.vo
vlog -work work mierda.vwf.vt
vsim -novopt -c -t 1ps -L cyclonev_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate_ver -L altera_lnsim_ver work.demultiplexor4_1_vlg_vec_tst -voptargs="+acc"
vcd file -direction demultiplexor.msim.vcd
vcd add -internal demultiplexor4_1_vlg_vec_tst/*
vcd add -internal demultiplexor4_1_vlg_vec_tst/i1/*
run -all
quit -f
