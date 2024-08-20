REPO_ROOT		:= /home/ubuntu/systemVerilog/repos/systemVerilog_training
PROJECT_NUM		:= 0
PROJECT_PATH 	?= ${REPO_ROOT}/projects/myProjects${PROJECT_NUM}/homeWorksOfDataTypes/
FILE_NAME_VCD := tb

.PHONY: xrun_comp xrun_sim xrun_wave clear all all_wave create_docs

xrun_comp:
	verilator --binary -sv --top tb --timing \
	--timescale 1ns/100ps -j $$(nproc) \
	-f ${PROJECT_PATH}/src/filelist.f --trace \
	-o work_verilator

xrun_sim:
	./obj_dir/work_verilator

xrun_wave:
	gtkwave ./${FILE_NAME_VCD}.vcd

clear: 
	rm -rf ./obj_dir ./*.vcd

all: clear xrun_comp xrun_sim

all_wave: clear xrun_comp xrun_sim xrun_wave

create_docs:
	mono ${ND_EXE} -p ${REPO_ROOT}/docs/cfg



