quit -sim
vsim -novopt  -t ps tb_jop
set NumericStdNoWarnings 1

view wave
do wave_atlys_bram.do

run 1000ns

delete wave *
do wave_atlys_bram.do