@echo off
set xv_path=C:\\Xilinx\\Vivado\\2016.1\\bin
call %xv_path%/xelab  -wto a771bcf126284236817c75b0c5d1362f -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot shift_register_behav xil_defaultlib.shift_register -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
