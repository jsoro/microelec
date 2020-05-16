#!/usr/bin/tclsh
### --------------------------------------------------------------------
### gtkwave.tcl
### Author: William Ughetta
### --------------------------------------------------------------------

# Resources:
# Manual: http://gtkwave.sourceforge.net/gtkwave.pdf#Appendix-E-Tcl-Command-Syntax
# Also see the GTKWave source code file: examples/des.tcl


set all_facs [list]
gtkwave::addSignalsFromList "tb_top.RESULTS.clk"
gtkwave::highlightSignalsFromList "tb_top.RESULTS.clk"
gtkwave::/Edit/Color_Format/Indigo

gtkwave::addSignalsFromList "tb_top.RESULTS.D"
gtkwave::highlightSignalsFromList "tb_top.RESULTS.D"
gtkwave::/Edit/Color_Format/Green

gtkwave::addSignalsFromList "tb_top.RESULTS.modo"
gtkwave::highlightSignalsFromList "tb_top.RESULTS.modo"
gtkwave::/Edit/Color_Format/Green

gtkwave::addSignalsFromList "tb_top.RESULTS.enable"
gtkwave::highlightSignalsFromList "tb_top.RESULTS.enable"
gtkwave::/Edit/Color_Format/Green

gtkwave::addSignalsFromList "tb_top.RESULTS.QA"
gtkwave::highlightSignalsFromList "tb_top.RESULTS.QA"
gtkwave::/Edit/Color_Format/Blue

gtkwave::addSignalsFromList "tb_top.RESULTS.QB"
gtkwave::highlightSignalsFromList "tb_top.RESULTS.QB"
gtkwave::/Edit/Color_Format/Yellow

gtkwave::addSignalsFromList "tb_top.RESULTS.QC"
gtkwave::highlightSignalsFromList "tb_top.RESULTS.QC"
gtkwave::/Edit/Color_Format/Violet

gtkwave::addSignalsFromList "tb_top.RESULTS.sb.sb_Q"
gtkwave::highlightSignalsFromList "tb_top.RESULTS.sb.sb_Q"
gtkwave::/Edit/Color_Format/Red

gtkwave::addSignalsFromList "tb_top.RESULTS.rcoA"
gtkwave::highlightSignalsFromList "tb_top.RESULTS.rcoA"
gtkwave::/Edit/Color_Format/Blue

gtkwave::addSignalsFromList "tb_top.RESULTS.rcoB"
gtkwave::highlightSignalsFromList "tb_top.RESULTS.rcoB"
gtkwave::/Edit/Color_Format/Yellow

gtkwave::addSignalsFromList "tb_top.RESULTS.rcoC"
gtkwave::highlightSignalsFromList "tb_top.RESULTS.rcoC"
gtkwave::/Edit/Color_Format/Violet

gtkwave::addSignalsFromList "tb_top.RESULTS.sb.sb_rco"
gtkwave::highlightSignalsFromList "tb_top.RESULTS.sb.sb_rco"
gtkwave::/Edit/Color_Format/Red


# zoom full
gtkwave::/Time/Zoom/Zoom_Full

# Print

gtkwave::/File/Print_To_File PDF {Letter (8.5" x 11")} Full output/comparison.pdf
