#!/usr/bin/tclsh
### --------------------------------------------------------------------
### counter.tcl: Assign signals on init to gtkwave
### Author: Ricardo Soro
### --------------------------------------------------------------------


set all_facs [list]
gtkwave::addSignalsFromList "tb_top.tb.clk"
gtkwave::highlightSignalsFromList "tb_top.tb.clk"
gtkwave::/Edit/Color_Format/Indigo

gtkwave::addSignalsFromList "tb_top.tb.D"
gtkwave::highlightSignalsFromList "tb_top.tb.D"
gtkwave::/Edit/Color_Format/Green

gtkwave::addSignalsFromList "tb_top.tb.modo"
gtkwave::highlightSignalsFromList "tb_top.tb.modo"
gtkwave::/Edit/Color_Format/Green

gtkwave::addSignalsFromList "tb_top.tb.enable"
gtkwave::highlightSignalsFromList "tb_top.tb.enable"
gtkwave::/Edit/Color_Format/Green

gtkwave::addSignalsFromList "tb_top.tb.Q"
gtkwave::highlightSignalsFromList "tb_top.tb.Q"
gtkwave::/Edit/Color_Format/Violet

gtkwave::addSignalsFromList "tb_top.tb.sb.sb_Q"
gtkwave::highlightSignalsFromList "tb_top.tb.sb.sb_Q"
gtkwave::/Edit/Color_Format/Red

gtkwave::addSignalsFromList "tb_top.tb.rco"
gtkwave::highlightSignalsFromList "tb_top.tb.rco"
gtkwave::/Edit/Color_Format/Violet

gtkwave::addSignalsFromList "tb_top.tb.sb.sb_rco"
gtkwave::highlightSignalsFromList "tb_top.tb.sb.sb_rco"
gtkwave::/Edit/Color_Format/Red


# zoom full
gtkwave::/Time/Zoom/Zoom_Full

# Print

gtkwave::/File/Print_To_File PDF {A4 (8.5" x 4")} Full output/synth200.pdf
