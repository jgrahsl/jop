set -e

#ant tools

cd asm
ant -f jopsim.xml
cd ..
ant jop-config
ant java-app
cd xilinx/atlys
./mem.sh
coregen -r -b ipcore/xram.xco  -p ipcore/coregen.cgp
coregen -r -b ipcore/sysram.xco  -p ipcore/coregen.cgp
./build
cd ../..

cd xilinx/atlys/; _flcli --vp=1443:0007 --ivp=1443:0007 -s -x top.xsvf; cd ../..;

minicom
