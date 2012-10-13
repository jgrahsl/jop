DIR="../../modelsim"
cat $DIR/mem_main.dat  | ./dat2coe.py 16 > $DIR/sysram.coe 
cat $DIR/mem_ram.dat | ./dat2coe.py 32 > $DIR/xram.coe

cat $DIR/mem_main.dat  | ./dat2coe.py 16 coe > sysram.coe 
cat $DIR/mem_ram.dat | ./dat2coe.py 32 coe > xram.coe

cat $DIR/mem_main.dat  | ./dat2coe.py 16 > ipcore/sysram.mif
cat $DIR/mem_ram.dat | ./dat2coe.py 32 > ipcore/xram.mif

cp ipcore/*.mif $DIR