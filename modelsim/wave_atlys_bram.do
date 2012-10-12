onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -format Logic -radix hexadecimal /tb_jop/joptop/clk_int
add wave -noupdate -format Logic -radix hexadecimal /tb_jop/joptop/int_res
add wave -noupdate -format Logic /tb_jop/joptop/ser_txd
add wave -noupdate -format Logic /tb_jop/joptop/ser_rxd
add wave -noupdate -format Logic /tb_jop/joptop/io/wd
add wave -noupdate -format Literal -radix ascii /tb_jop/joptop/io/ua/char
add wave -noupdate -divider {java pc}
add wave -noupdate -format Literal -radix hexadecimal /tb_jop/joptop/cpu/core/bcf/jpc
add wave -noupdate -divider bcfetch
add wave -noupdate -format Literal -radix hexadecimal /tb_jop/joptop/cpu/core/bcf/jinstr
add wave -noupdate -format Literal /tb_jop/joptop/cpu/core/bcf/bc/val
add wave -noupdate -format Literal -radix hexadecimal /tb_jop/joptop/cpu/core/bcf/opd
add wave -noupdate -format Literal -radix hexadecimal /tb_jop/joptop/cpu/core/fch/pc
add wave -noupdate -format Logic -radix hexadecimal /tb_jop/joptop/cpu/core/fch/nxt
add wave -noupdate -format Literal /tb_jop/joptop/cpu/core/bcf/bc/val
add wave -noupdate -divider fetch
add wave -noupdate -format Literal /tb_jop/joptop/cpu/core/fch/uc/val
add wave -noupdate -format Literal -radix hexadecimal /tb_jop/joptop/cpu/core/fch/ir
add wave -noupdate -format Literal /tb_jop/joptop/cpu/core/fch/uc/val
add wave -noupdate -divider decode
add wave -noupdate -format Logic /tb_jop/joptop/cpu/core/dec/br
add wave -noupdate -format Logic /tb_jop/joptop/cpu/core/dec/jmp
add wave -noupdate -format Logic /tb_jop/joptop/cpu/core/dec/jbr
add wave -noupdate -format Logic /tb_jop/joptop/cpu/core/dec/ena_a
add wave -noupdate -format Logic -radix hexadecimal /tb_jop/joptop/cpu/core/fch/bsy
add wave -noupdate -format Literal -radix hexadecimal /tb_jop/joptop/cpu/core/stk/sp
add wave -noupdate -format Literal -radix hexadecimal /tb_jop/joptop/cpu/core/stk/vp0
add wave -noupdate -divider execute
add wave -noupdate -format Literal -radix hexadecimal /tb_jop/joptop/cpu/core/stk/a
add wave -noupdate -format Literal -radix hexadecimal /tb_jop/joptop/cpu/core/stk/b
add wave -noupdate -divider mem_sc
add wave -noupdate -format Literal -radix hexadecimal /tb_jop/joptop/cpu/mem/mem_in
add wave -noupdate -format Literal -radix hexadecimal /tb_jop/joptop/cpu/mem/mem_out
add wave -noupdate -format Literal -radix hexadecimal /tb_jop/joptop/cpu/mem/state
add wave -noupdate -format Literal -radix hexadecimal /tb_jop/joptop/cpu/mem/addr_reg
add wave -noupdate -format Literal -radix hexadecimal /tb_jop/joptop/cpu/mem/index
add wave -noupdate -format Literal -radix hexadecimal /tb_jop/joptop/cpu/mem/value
add wave -noupdate -format Logic /tb_jop/joptop/cpu/mem/putref_reg
add wave -noupdate -format Literal -radix hexadecimal /tb_jop/joptop/cpu/mem/dest_level_reg
add wave -noupdate -format Logic /tb_jop/joptop/cpu/mem/was_a_store
add wave -noupdate -format Logic /tb_jop/joptop/cpu/mem/was_a_stidx
add wave -noupdate -format Logic /tb_jop/joptop/cpu/mem/was_a_hwo
add wave -noupdate -format Logic /tb_jop/joptop/cpu/mem/read_ocache
add wave -noupdate -format Logic -radix hexadecimal /tb_jop/joptop/cpu/mem/null_pointer
add wave -noupdate -format Logic -radix hexadecimal /tb_jop/joptop/cpu/mem/bounds_error
add wave -noupdate -format Logic -radix hexadecimal /tb_jop/joptop/cpu/mem/illegal_assignment
add wave -noupdate -format Logic /tb_jop/joptop/cpu/mem/np_exc
add wave -noupdate -format Logic /tb_jop/joptop/cpu/mem/ab_exc
add wave -noupdate -format Logic /tb_jop/joptop/cpu/mem/ia_exc
add wave -noupdate -format Literal -radix hexadecimal -expand /tb_jop/joptop/cpu/mem/sc_mem_out
add wave -noupdate -format Literal -radix hexadecimal -expand /tb_jop/joptop/cpu/mem/sc_mem_in
add wave -noupdate -divider ocache
add wave -noupdate -format Literal -radix hexadecimal -expand /tb_jop/joptop/cpu/mem/oc/ocin
add wave -noupdate -format Logic /tb_jop/joptop/cpu/mem/oc/chk_gf_dly
add wave -noupdate -format Logic /tb_jop/joptop/cpu/mem/oc/cacheable
add wave -noupdate -format Logic /tb_jop/joptop/cpu/mem/oc/cacheable_reg
add wave -noupdate -format Literal -radix hexadecimal /tb_jop/joptop/cpu/mem/oc/ram_dout_store
add wave -noupdate -format Literal -radix hexadecimal -expand /tb_jop/joptop/cpu/mem/oc/ocout
add wave -noupdate -format Logic /tb_jop/joptop/cpu/mem/oc/hit_reg
add wave -noupdate -format Literal -radix hexadecimal -expand /tb_jop/joptop/cpu/mem/oc/ocin_reg
add wave -noupdate -format Logic /tb_jop/joptop/cpu/mem/oc/update_cache
add wave -noupdate -format Literal -radix hexadecimal /tb_jop/joptop/cpu/mem/oc/ram_wraddr
add wave -noupdate -format Literal -radix hexadecimal /tb_jop/joptop/cpu/mem/oc/ram
add wave -noupdate -format Literal -radix hexadecimal /tb_jop/joptop/cpu/mem/oc/ram_din
add wave -noupdate -format Literal -radix hexadecimal /tb_jop/joptop/cpu/mem/oc/oc_tag_out.hit_line
add wave -noupdate -format Literal -radix hexadecimal /tb_jop/joptop/cpu/mem/oc/ram_dout
add wave -noupdate -format Literal -radix hexadecimal /tb_jop/joptop/cpu/mem/oc/tag/nxt
add wave -noupdate -format Literal -radix hexadecimal -expand /tb_jop/joptop/cpu/mem/oc/tag/tag_in
add wave -noupdate -format Literal -radix hexadecimal /tb_jop/joptop/cpu/mem/oc/tag/tag
add wave -noupdate -format Literal -radix hexadecimal /tb_jop/joptop/cpu/mem/oc/tag/valid
add wave -noupdate -format Literal -radix hexadecimal /tb_jop/joptop/cpu/mem/oc/tag/tag_out
add wave -noupdate -divider SimpCon
add wave -noupdate -format Literal -radix hexadecimal -expand /tb_jop/joptop/cpu/sc_mem_out
add wave -noupdate -format Literal -radix hexadecimal -expand /tb_jop/joptop/cpu/sc_mem_in
add wave -noupdate -divider {external signals}
add wave -noupdate -format Literal -expand /tb_jop/joptop/scm/sc_mem_out
add wave -noupdate -format Literal /tb_jop/joptop/scm/sc_mem_in
add wave -noupdate -format Literal /tb_jop/joptop/scm/ram_addr
add wave -noupdate -format Literal /tb_jop/joptop/scm/ram_dout
add wave -noupdate -format Literal /tb_jop/joptop/scm/ram_din
add wave -noupdate -format Logic /tb_jop/joptop/scm/ram_dout_en
add wave -noupdate -format Logic /tb_jop/joptop/scm/ram_ncs
add wave -noupdate -format Logic /tb_jop/joptop/scm/ram_noe
add wave -noupdate -format Logic /tb_jop/joptop/scm/ram_nwe
add wave -noupdate -format Literal /tb_jop/joptop/scm/state
add wave -noupdate -divider {New Divider}
add wave -noupdate -format Logic /tb_jop/joptop/my_sysram/clka
add wave -noupdate -format Literal /tb_jop/joptop/my_sysram/wea
add wave -noupdate -format Literal /tb_jop/joptop/my_sysram/addra
add wave -noupdate -format Literal /tb_jop/joptop/my_sysram/dina
add wave -noupdate -format Literal /tb_jop/joptop/my_sysram/douta
add wave -noupdate -format Literal /tb_jop/joptop/cpu/core/fch/jpaddr
add wave -noupdate -format Literal /tb_jop/joptop/cpu/core/fch/pc_mux
add wave -noupdate -format Literal /tb_jop/joptop/pcmux
add wave -noupdate -divider uart
add wave -noupdate -format Literal /tb_jop/joptop/io/ua/addr_bits
add wave -noupdate -format Literal /tb_jop/joptop/io/ua/address
add wave -noupdate -format Literal /tb_jop/joptop/io/ua/baud_rate
add wave -noupdate -format Literal /tb_jop/joptop/io/ua/char
add wave -noupdate -format Logic /tb_jop/joptop/io/ua/clk
add wave -noupdate -format Literal /tb_jop/joptop/io/ua/clk_freq
add wave -noupdate -format Logic /tb_jop/joptop/io/ua/ncts
add wave -noupdate -format Logic /tb_jop/joptop/io/ua/nrts
add wave -noupdate -format Logic /tb_jop/joptop/io/ua/rd
add wave -noupdate -format Literal /tb_jop/joptop/io/ua/rd_data
add wave -noupdate -format Logic /tb_jop/joptop/io/ua/rdrf
add wave -noupdate -format Literal /tb_jop/joptop/io/ua/rdy_cnt
add wave -noupdate -format Logic /tb_jop/joptop/io/ua/reset
add wave -noupdate -format Logic /tb_jop/joptop/io/ua/rxd
add wave -noupdate -format Literal /tb_jop/joptop/io/ua/rxf_depth
add wave -noupdate -format Literal /tb_jop/joptop/io/ua/rxf_thres
add wave -noupdate -format Logic /tb_jop/joptop/io/ua/tdre
add wave -noupdate -format Logic /tb_jop/joptop/io/ua/txd
add wave -noupdate -format Literal /tb_jop/joptop/io/ua/txf_depth
add wave -noupdate -format Literal /tb_jop/joptop/io/ua/txf_thres
add wave -noupdate -format Logic /tb_jop/joptop/io/ua/ua_wr
add wave -noupdate -format Logic /tb_jop/joptop/io/ua/wr
add wave -noupdate -format Literal /tb_jop/joptop/io/ua/wr_data
add wave -noupdate -format Literal -expand /tb_jop/joptop/led
add wave -noupdate -format Literal /tb_jop/joptop/io/sel
add wave -noupdate -format Logic /tb_jop/joptop/io/sc_io_out.rd
add wave -noupdate -divider memsc
add wave -noupdate -format Literal /tb_jop/joptop/cpu/mem/base_reg
add wave -noupdate -format Literal /tb_jop/joptop/cpu/mem/offset_reg
add wave -noupdate -format Literal /tb_jop/joptop/cpu/mem/pos_reg
add wave -noupdate -format Literal /tb_jop/joptop/cpu/mem/ain
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {11134435 ps} 0} {{Cursor 2} {4824771479 ps} 0}
configure wave -namecolwidth 233
configure wave -valuecolwidth 214
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {19995031894 ps} {20000261480 ps}
bookmark add wave initial {{0 ps} {683228 ps}} 142
