DIR="../../modelsim"
cat $DIR/mem_main.dat  | ./dat2coe.py 16 > $DIR/sysram.coe 
cat $DIR/mem_ram.dat | ./dat2coe.py 32 > $DIR/xram.coe

