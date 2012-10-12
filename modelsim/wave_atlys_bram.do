onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -radix hexadecimal /tb_jop/joptop/clk_int
add wave -noupdate -radix hexadecimal /tb_jop/joptop/int_res
add wave -noupdate /tb_jop/joptop/ser_txd
add wave -noupdate /tb_jop/joptop/ser_rxd
add wave -noupdate /tb_jop/joptop/io/wd
add wave -noupdate -radix ascii /tb_jop/joptop/io/ua/char
add wave -noupdate -divider {java pc}
add wave -noupdate -radix hexadecimal /tb_jop/joptop/cpu/core/bcf/jpc
add wave -noupdate -divider bcfetch
add wave -noupdate -radix hexadecimal /tb_jop/joptop/cpu/core/bcf/jinstr
add wave -noupdate /tb_jop/joptop/cpu/core/bcf/bc/val
add wave -noupdate -radix hexadecimal /tb_jop/joptop/cpu/core/bcf/opd
add wave -noupdate -radix hexadecimal /tb_jop/joptop/cpu/core/fch/pc
add wave -noupdate -radix hexadecimal /tb_jop/joptop/cpu/core/fch/nxt
add wave -noupdate /tb_jop/joptop/cpu/core/bcf/bc/val
add wave -noupdate -divider fetch
add wave -noupdate /tb_jop/joptop/cpu/core/fch/uc/val
add wave -noupdate -radix hexadecimal /tb_jop/joptop/cpu/core/fch/ir
add wave -noupdate /tb_jop/joptop/cpu/core/fch/uc/val
add wave -noupdate -divider decode
add wave -noupdate /tb_jop/joptop/cpu/core/dec/br
add wave -noupdate /tb_jop/joptop/cpu/core/dec/jmp
add wave -noupdate /tb_jop/joptop/cpu/core/dec/jbr
add wave -noupdate /tb_jop/joptop/cpu/core/dec/ena_a
add wave -noupdate -radix hexadecimal /tb_jop/joptop/cpu/core/fch/bsy
add wave -noupdate -radix hexadecimal /tb_jop/joptop/cpu/core/stk/sp
add wave -noupdate -radix hexadecimal /tb_jop/joptop/cpu/core/stk/vp0
add wave -noupdate -divider execute
add wave -noupdate -radix hexadecimal /tb_jop/joptop/cpu/core/stk/a
add wave -noupdate -radix hexadecimal /tb_jop/joptop/cpu/core/stk/b
add wave -noupdate -divider mem_sc
add wave -noupdate -radix hexadecimal /tb_jop/joptop/cpu/mem/mem_in
add wave -noupdate -radix hexadecimal /tb_jop/joptop/cpu/mem/mem_out
add wave -noupdate -radix hexadecimal /tb_jop/joptop/cpu/mem/state
add wave -noupdate -radix hexadecimal /tb_jop/joptop/cpu/mem/addr_reg
add wave -noupdate -radix hexadecimal /tb_jop/joptop/cpu/mem/index
add wave -noupdate -radix hexadecimal /tb_jop/joptop/cpu/mem/value
add wave -noupdate /tb_jop/joptop/cpu/mem/putref_reg
add wave -noupdate -radix hexadecimal /tb_jop/joptop/cpu/mem/dest_level_reg
add wave -noupdate /tb_jop/joptop/cpu/mem/was_a_store
add wave -noupdate /tb_jop/joptop/cpu/mem/was_a_stidx
add wave -noupdate /tb_jop/joptop/cpu/mem/was_a_hwo
add wave -noupdate /tb_jop/joptop/cpu/mem/read_ocache
add wave -noupdate -radix hexadecimal /tb_jop/joptop/cpu/mem/null_pointer
add wave -noupdate -radix hexadecimal /tb_jop/joptop/cpu/mem/bounds_error
add wave -noupdate -radix hexadecimal /tb_jop/joptop/cpu/mem/illegal_assignment
add wave -noupdate /tb_jop/joptop/cpu/mem/np_exc
add wave -noupdate /tb_jop/joptop/cpu/mem/ab_exc
add wave -noupdate /tb_jop/joptop/cpu/mem/ia_exc
add wave -noupdate -radix hexadecimal -childformat {{/tb_jop/joptop/cpu/mem/sc_mem_out.address -radix hexadecimal} {/tb_jop/joptop/cpu/mem/sc_mem_out.wr_data -radix hexadecimal} {/tb_jop/joptop/cpu/mem/sc_mem_out.rd -radix hexadecimal} {/tb_jop/joptop/cpu/mem/sc_mem_out.wr -radix hexadecimal} {/tb_jop/joptop/cpu/mem/sc_mem_out.atomic -radix hexadecimal} {/tb_jop/joptop/cpu/mem/sc_mem_out.cache -radix hexadecimal} {/tb_jop/joptop/cpu/mem/sc_mem_out.cinval -radix hexadecimal} {/tb_jop/joptop/cpu/mem/sc_mem_out.tm_cache -radix hexadecimal} {/tb_jop/joptop/cpu/mem/sc_mem_out.tm_broadcast -radix hexadecimal}} -expand -subitemconfig {/tb_jop/joptop/cpu/mem/sc_mem_out.address {-height 15 -radix hexadecimal} /tb_jop/joptop/cpu/mem/sc_mem_out.wr_data {-height 15 -radix hexadecimal} /tb_jop/joptop/cpu/mem/sc_mem_out.rd {-height 15 -radix hexadecimal} /tb_jop/joptop/cpu/mem/sc_mem_out.wr {-height 15 -radix hexadecimal} /tb_jop/joptop/cpu/mem/sc_mem_out.atomic {-height 15 -radix hexadecimal} /tb_jop/joptop/cpu/mem/sc_mem_out.cache {-height 15 -radix hexadecimal} /tb_jop/joptop/cpu/mem/sc_mem_out.cinval {-height 15 -radix hexadecimal} /tb_jop/joptop/cpu/mem/sc_mem_out.tm_cache {-height 15 -radix hexadecimal} /tb_jop/joptop/cpu/mem/sc_mem_out.tm_broadcast {-height 15 -radix hexadecimal}} /tb_jop/joptop/cpu/mem/sc_mem_out
add wave -noupdate -radix hexadecimal -childformat {{/tb_jop/joptop/cpu/mem/sc_mem_in.rd_data -radix hexadecimal} {/tb_jop/joptop/cpu/mem/sc_mem_in.rdy_cnt -radix hexadecimal}} -expand -subitemconfig {/tb_jop/joptop/cpu/mem/sc_mem_in.rd_data {-height 15 -radix hexadecimal} /tb_jop/joptop/cpu/mem/sc_mem_in.rdy_cnt {-height 15 -radix hexadecimal}} /tb_jop/joptop/cpu/mem/sc_mem_in
add wave -noupdate -divider ocache
add wave -noupdate -radix hexadecimal -childformat {{/tb_jop/joptop/cpu/mem/oc/ocin.handle -radix hexadecimal} {/tb_jop/joptop/cpu/mem/oc/ocin.index -radix hexadecimal} {/tb_jop/joptop/cpu/mem/oc/ocin.gf_val -radix hexadecimal} {/tb_jop/joptop/cpu/mem/oc/ocin.pf_val -radix hexadecimal} {/tb_jop/joptop/cpu/mem/oc/ocin.chk_gf -radix hexadecimal} {/tb_jop/joptop/cpu/mem/oc/ocin.chk_pf -radix hexadecimal} {/tb_jop/joptop/cpu/mem/oc/ocin.wr_gf -radix hexadecimal} {/tb_jop/joptop/cpu/mem/oc/ocin.wr_pf -radix hexadecimal} {/tb_jop/joptop/cpu/mem/oc/ocin.inval -radix hexadecimal}} -expand -subitemconfig {/tb_jop/joptop/cpu/mem/oc/ocin.handle {-height 15 -radix hexadecimal} /tb_jop/joptop/cpu/mem/oc/ocin.index {-height 15 -radix hexadecimal} /tb_jop/joptop/cpu/mem/oc/ocin.gf_val {-height 15 -radix hexadecimal} /tb_jop/joptop/cpu/mem/oc/ocin.pf_val {-height 15 -radix hexadecimal} /tb_jop/joptop/cpu/mem/oc/ocin.chk_gf {-height 15 -radix hexadecimal} /tb_jop/joptop/cpu/mem/oc/ocin.chk_pf {-height 15 -radix hexadecimal} /tb_jop/joptop/cpu/mem/oc/ocin.wr_gf {-height 15 -radix hexadecimal} /tb_jop/joptop/cpu/mem/oc/ocin.wr_pf {-height 15 -radix hexadecimal} /tb_jop/joptop/cpu/mem/oc/ocin.inval {-height 15 -radix hexadecimal}} /tb_jop/joptop/cpu/mem/oc/ocin
add wave -noupdate /tb_jop/joptop/cpu/mem/oc/chk_gf_dly
add wave -noupdate /tb_jop/joptop/cpu/mem/oc/cacheable
add wave -noupdate /tb_jop/joptop/cpu/mem/oc/cacheable_reg
add wave -noupdate -radix hexadecimal /tb_jop/joptop/cpu/mem/oc/ram_dout_store
add wave -noupdate -radix hexadecimal -childformat {{/tb_jop/joptop/cpu/mem/oc/ocout.hit -radix hexadecimal} {/tb_jop/joptop/cpu/mem/oc/ocout.dout -radix hexadecimal}} -expand -subitemconfig {/tb_jop/joptop/cpu/mem/oc/ocout.hit {-height 15 -radix hexadecimal} /tb_jop/joptop/cpu/mem/oc/ocout.dout {-height 15 -radix hexadecimal}} /tb_jop/joptop/cpu/mem/oc/ocout
add wave -noupdate /tb_jop/joptop/cpu/mem/oc/hit_reg
add wave -noupdate -radix hexadecimal -childformat {{/tb_jop/joptop/cpu/mem/oc/ocin_reg.handle -radix hexadecimal} {/tb_jop/joptop/cpu/mem/oc/ocin_reg.index -radix hexadecimal} {/tb_jop/joptop/cpu/mem/oc/ocin_reg.gf_val -radix hexadecimal} {/tb_jop/joptop/cpu/mem/oc/ocin_reg.pf_val -radix hexadecimal} {/tb_jop/joptop/cpu/mem/oc/ocin_reg.chk_gf -radix hexadecimal} {/tb_jop/joptop/cpu/mem/oc/ocin_reg.chk_pf -radix hexadecimal} {/tb_jop/joptop/cpu/mem/oc/ocin_reg.wr_gf -radix hexadecimal} {/tb_jop/joptop/cpu/mem/oc/ocin_reg.wr_pf -radix hexadecimal} {/tb_jop/joptop/cpu/mem/oc/ocin_reg.inval -radix hexadecimal}} -expand -subitemconfig {/tb_jop/joptop/cpu/mem/oc/ocin_reg.handle {-height 15 -radix hexadecimal} /tb_jop/joptop/cpu/mem/oc/ocin_reg.index {-height 15 -radix hexadecimal} /tb_jop/joptop/cpu/mem/oc/ocin_reg.gf_val {-height 15 -radix hexadecimal} /tb_jop/joptop/cpu/mem/oc/ocin_reg.pf_val {-height 15 -radix hexadecimal} /tb_jop/joptop/cpu/mem/oc/ocin_reg.chk_gf {-height 15 -radix hexadecimal} /tb_jop/joptop/cpu/mem/oc/ocin_reg.chk_pf {-height 15 -radix hexadecimal} /tb_jop/joptop/cpu/mem/oc/ocin_reg.wr_gf {-height 15 -radix hexadecimal} /tb_jop/joptop/cpu/mem/oc/ocin_reg.wr_pf {-height 15 -radix hexadecimal} /tb_jop/joptop/cpu/mem/oc/ocin_reg.inval {-height 15 -radix hexadecimal}} /tb_jop/joptop/cpu/mem/oc/ocin_reg
add wave -noupdate /tb_jop/joptop/cpu/mem/oc/update_cache
add wave -noupdate -radix hexadecimal /tb_jop/joptop/cpu/mem/oc/ram_wraddr
add wave -noupdate -radix hexadecimal /tb_jop/joptop/cpu/mem/oc/ram
add wave -noupdate -radix hexadecimal /tb_jop/joptop/cpu/mem/oc/ram_din
add wave -noupdate -radix hexadecimal /tb_jop/joptop/cpu/mem/oc/oc_tag_out.hit_line
add wave -noupdate -radix hexadecimal /tb_jop/joptop/cpu/mem/oc/ram_dout
add wave -noupdate -radix hexadecimal /tb_jop/joptop/cpu/mem/oc/tag/nxt
add wave -noupdate -radix hexadecimal -childformat {{/tb_jop/joptop/cpu/mem/oc/tag/tag_in.invalidate -radix hexadecimal} {/tb_jop/joptop/cpu/mem/oc/tag/tag_in.addr -radix hexadecimal} {/tb_jop/joptop/cpu/mem/oc/tag/tag_in.index -radix hexadecimal} {/tb_jop/joptop/cpu/mem/oc/tag/tag_in.wraddr -radix hexadecimal} {/tb_jop/joptop/cpu/mem/oc/tag/tag_in.wrline -radix hexadecimal} {/tb_jop/joptop/cpu/mem/oc/tag/tag_in.wrindex -radix hexadecimal} {/tb_jop/joptop/cpu/mem/oc/tag/tag_in.wr -radix hexadecimal} {/tb_jop/joptop/cpu/mem/oc/tag/tag_in.inc_nxt -radix hexadecimal}} -expand -subitemconfig {/tb_jop/joptop/cpu/mem/oc/tag/tag_in.invalidate {-height 15 -radix hexadecimal} /tb_jop/joptop/cpu/mem/oc/tag/tag_in.addr {-height 15 -radix hexadecimal} /tb_jop/joptop/cpu/mem/oc/tag/tag_in.index {-height 15 -radix hexadecimal} /tb_jop/joptop/cpu/mem/oc/tag/tag_in.wraddr {-height 15 -radix hexadecimal} /tb_jop/joptop/cpu/mem/oc/tag/tag_in.wrline {-height 15 -radix hexadecimal} /tb_jop/joptop/cpu/mem/oc/tag/tag_in.wrindex {-height 15 -radix hexadecimal} /tb_jop/joptop/cpu/mem/oc/tag/tag_in.wr {-height 15 -radix hexadecimal} /tb_jop/joptop/cpu/mem/oc/tag/tag_in.inc_nxt {-height 15 -radix hexadecimal}} /tb_jop/joptop/cpu/mem/oc/tag/tag_in
add wave -noupdate -radix hexadecimal /tb_jop/joptop/cpu/mem/oc/tag/tag
add wave -noupdate -radix hexadecimal /tb_jop/joptop/cpu/mem/oc/tag/valid
add wave -noupdate -radix hexadecimal /tb_jop/joptop/cpu/mem/oc/tag/tag_out
add wave -noupdate -divider SimpCon
add wave -noupdate -radix hexadecimal -childformat {{/tb_jop/joptop/cpu/sc_mem_out.address -radix hexadecimal} {/tb_jop/joptop/cpu/sc_mem_out.wr_data -radix hexadecimal} {/tb_jop/joptop/cpu/sc_mem_out.rd -radix hexadecimal} {/tb_jop/joptop/cpu/sc_mem_out.wr -radix hexadecimal} {/tb_jop/joptop/cpu/sc_mem_out.atomic -radix hexadecimal} {/tb_jop/joptop/cpu/sc_mem_out.cache -radix hexadecimal} {/tb_jop/joptop/cpu/sc_mem_out.cinval -radix hexadecimal} {/tb_jop/joptop/cpu/sc_mem_out.tm_cache -radix hexadecimal} {/tb_jop/joptop/cpu/sc_mem_out.tm_broadcast -radix hexadecimal}} -expand -subitemconfig {/tb_jop/joptop/cpu/sc_mem_out.address {-height 15 -radix hexadecimal} /tb_jop/joptop/cpu/sc_mem_out.wr_data {-height 15 -radix hexadecimal} /tb_jop/joptop/cpu/sc_mem_out.rd {-height 15 -radix hexadecimal} /tb_jop/joptop/cpu/sc_mem_out.wr {-height 15 -radix hexadecimal} /tb_jop/joptop/cpu/sc_mem_out.atomic {-height 15 -radix hexadecimal} /tb_jop/joptop/cpu/sc_mem_out.cache {-height 15 -radix hexadecimal} /tb_jop/joptop/cpu/sc_mem_out.cinval {-height 15 -radix hexadecimal} /tb_jop/joptop/cpu/sc_mem_out.tm_cache {-height 15 -radix hexadecimal} /tb_jop/joptop/cpu/sc_mem_out.tm_broadcast {-height 15 -radix hexadecimal}} /tb_jop/joptop/cpu/sc_mem_out
add wave -noupdate -radix hexadecimal -childformat {{/tb_jop/joptop/cpu/sc_mem_in.rd_data -radix hexadecimal} {/tb_jop/joptop/cpu/sc_mem_in.rdy_cnt -radix hexadecimal}} -expand -subitemconfig {/tb_jop/joptop/cpu/sc_mem_in.rd_data {-height 15 -radix hexadecimal} /tb_jop/joptop/cpu/sc_mem_in.rdy_cnt {-height 15 -radix hexadecimal}} /tb_jop/joptop/cpu/sc_mem_in
add wave -noupdate -divider {external signals}
add wave -noupdate -expand /tb_jop/joptop/scm/sc_mem_out
add wave -noupdate /tb_jop/joptop/scm/sc_mem_in
add wave -noupdate /tb_jop/joptop/scm/ram_addr
add wave -noupdate /tb_jop/joptop/scm/ram_dout
add wave -noupdate /tb_jop/joptop/scm/ram_din
add wave -noupdate /tb_jop/joptop/scm/ram_dout_en
add wave -noupdate /tb_jop/joptop/scm/ram_ncs
add wave -noupdate /tb_jop/joptop/scm/ram_noe
add wave -noupdate /tb_jop/joptop/scm/ram_nwe
add wave -noupdate /tb_jop/joptop/scm/state
add wave -noupdate -divider {New Divider}
add wave -noupdate /tb_jop/joptop/my_sysram/clka
add wave -noupdate /tb_jop/joptop/my_sysram/wea
add wave -noupdate /tb_jop/joptop/my_sysram/addra
add wave -noupdate /tb_jop/joptop/my_sysram/dina
add wave -noupdate /tb_jop/joptop/my_sysram/douta
add wave -noupdate /tb_jop/joptop/cpu/core/fch/jpaddr
add wave -noupdate -expand /tb_jop/joptop/cpu/core/fch/pc_mux
add wave -noupdate /tb_jop/joptop/pcmux
add wave -noupdate -divider uart
add wave -noupdate /tb_jop/joptop/io/ua/addr_bits
add wave -noupdate /tb_jop/joptop/io/ua/address
add wave -noupdate /tb_jop/joptop/io/ua/baud_rate
add wave -noupdate /tb_jop/joptop/io/ua/char
add wave -noupdate /tb_jop/joptop/io/ua/clk
add wave -noupdate /tb_jop/joptop/io/ua/clk_freq
add wave -noupdate /tb_jop/joptop/io/ua/ncts
add wave -noupdate /tb_jop/joptop/io/ua/nrts
add wave -noupdate /tb_jop/joptop/io/ua/rd
add wave -noupdate /tb_jop/joptop/io/ua/rd_data
add wave -noupdate /tb_jop/joptop/io/ua/rdrf
add wave -noupdate /tb_jop/joptop/io/ua/rdy_cnt
add wave -noupdate /tb_jop/joptop/io/ua/reset
add wave -noupdate /tb_jop/joptop/io/ua/rxd
add wave -noupdate /tb_jop/joptop/io/ua/rxf_depth
add wave -noupdate /tb_jop/joptop/io/ua/rxf_thres
add wave -noupdate /tb_jop/joptop/io/ua/tdre
add wave -noupdate /tb_jop/joptop/io/ua/txd
add wave -noupdate /tb_jop/joptop/io/ua/txf_depth
add wave -noupdate /tb_jop/joptop/io/ua/txf_thres
add wave -noupdate /tb_jop/joptop/io/ua/ua_wr
add wave -noupdate /tb_jop/joptop/io/ua/wr
add wave -noupdate /tb_jop/joptop/io/ua/wr_data
add wave -noupdate -expand /tb_jop/joptop/led
add wave -noupdate /tb_jop/joptop/io/sel
add wave -noupdate /tb_jop/joptop/io/sc_io_out.rd
add wave -noupdate -divider memsc
add wave -noupdate -radix hexadecimal /tb_jop/joptop/cpu/mem/base_reg
add wave -noupdate -radix hexadecimal /tb_jop/joptop/cpu/mem/offset_reg
add wave -noupdate -radix hexadecimal /tb_jop/joptop/cpu/mem/pos_reg
add wave -noupdate -radix hexadecimal /tb_jop/joptop/cpu/mem/ain
add wave -noupdate -divider Stackram
add wave -noupdate -radix hexadecimal /tb_jop/joptop/cpu/core/stk/stkram/width
add wave -noupdate -radix hexadecimal /tb_jop/joptop/cpu/core/stk/stkram/clock
add wave -noupdate -radix hexadecimal /tb_jop/joptop/cpu/core/stk/stkram/data
add wave -noupdate -radix hexadecimal /tb_jop/joptop/cpu/core/stk/stkram/q
add wave -noupdate -radix hexadecimal /tb_jop/joptop/cpu/core/stk/stkram/rdaddress
add wave -noupdate -radix hexadecimal /tb_jop/joptop/cpu/core/stk/stkram/addr_width
add wave -noupdate -radix hexadecimal /tb_jop/joptop/cpu/core/stk/stkram/reset
add wave -noupdate -radix hexadecimal /tb_jop/joptop/cpu/core/stk/stkram/wraddr_dly
add wave -noupdate -radix hexadecimal /tb_jop/joptop/cpu/core/stk/stkram/wraddress
add wave -noupdate -radix hexadecimal /tb_jop/joptop/cpu/core/stk/stkram/wren
add wave -noupdate -radix hexadecimal /tb_jop/joptop/cpu/core/stk/stkram/wren_dly
add wave -noupdate -radix hexadecimal /tb_jop/joptop/cpu/core/stk/stkram/nclock
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {4056150 ps} 0} {{Cursor 2} {4824771479 ps} 0} {{Cursor 3} {2578947 ps} 0}
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
WaveRestoreZoom {2340936 ps} {2999064 ps}
bookmark add wave initial {{0 ps} {683228 ps}} 142
