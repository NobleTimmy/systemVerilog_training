LESSON_ROOT 	?= ${REPO_ROOT}/template
FILE_NAME_VCD := tb


.PHONY: xrun_comp xrun_sim xrun_wave clear all all_wave

xrun_comp:
	verilator --binary --sv --top tb --timing \
	--timescale 1ns/100ps -j $$(nproc) \
	-f ${LESSON_ROOT}/src/filelist.f --trace \
	-o work_verilator

xrun_sim:
	./obj_dir/work_verilator

xrun_wave:
	gtkwave ./${FILE_NAME_VCD}.vcd

clear: 
	rm -rf ./obj_dir ./*.vcd

all: clear xrun_comp xrun_sim

all_wave: clear xrun_comp xrun_sim xrun_wave
