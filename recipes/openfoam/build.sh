#!/bin/bash

set -x

# $CONDA_PREFIX/etc/conda/activate.d/activate-gcc_linux-64.sh
# $CONDA_PREFIX/etc/conda/activate.d/activate-gxx_linux-64.sh
# $CONDA_PREFIX/etc/conda/activate.d/activate-gfortran_linux-64.sh
# $CONDA_PREFIX/etc/conda/activate.d/activate-binutils_linux-64.sh

mv foam $HOME/

cd $CONDA_PREFIX/bin/
ln -s x86_64-conda_cos6-linux-gnu-gcc gcc
ln -s x86_64-conda_cos6-linux-gnu-g++ g++
ln -s x86_64-conda_cos6-linux-gnu-c++ c++
ln -s x86_64-conda_cos6-linux-gnu-gfortran gfortran
ln -s x86_64-conda_cos6-linux-gnu-ld ld
ln -s x86_64-conda_cos6-linux-gnu-as as
ln -s x86_64-conda_cos6-linux-gnu-nm nm
ln -s x86_64-conda_cos6-linux-gnu-cpp cpp
ln -s x86_64-conda_cos6-linux-gnu-ld.bfd ld.bfd
ln -s x86_64-conda_cos6-linux-gnu-ld.gold ld.gold
ln -s x86_64-conda_cos6-linux-gnu-ar ar


cd $HOME/openfoam

# git clone https://github.com/OpenFOAM/OpenFOAM-8.git
# git clone https://github.com/OpenFOAM/ThirdParty-8.git

echo "before bashrc"

source OpenFOAM-v2106/etc/bashrc

echo "after bashrc" 

# cd ThirdParty-8/

# cat "CFLAGS  += -I $CONDA_PREFIX/pkgs/zlib-*/include" >> etc/wmakeFiles/scotch/Makefile.inc.i686_pc_linux2.shlib-OpenFOAM

# cat "LDFLAGS += -L /home/mojtaba/miniconda3/pkgs/zlib-1.2.11-h7b6447c_3/lib" >> etc/wmakeFiles/scotch/Makefile.inc.i686_pc_linux2.shlib-OpenFOAM

# ./Allwmake

# wmRefresh

# cd ../OpenFOAM-v2106/

# cat "CFLAGS += -I /home/mojtaba/miniconda3/pkgs/zlib-1.2.11-h7b6447c_3/include -I /home/mojtaba/miniconda3/pkgs/flex-2.6.4-ha10e3a4_1/include/" >> wmake/rules/linux64Gcc/c

# cat "c++FLAGS += -I /home/mojtaba/miniconda3/pkgs/zlib-1.2.11-h7b6447c_3/include -I /home/mojtaba/miniconda3/pkgs/flex-2.6.4-ha10e3a4_1/include/" >> wmake/rules/linux64Gcc/c++
# cat "c++FLAGS += -Wl,-rpath-link,/home/mojtaba/openfoam/ThirdParty-8/platforms/linux64Gcc/gperftools-svn/lib" >> wmake/rules/linux64Gcc/c++
# cat "c++FLAGS += -Wl,-rpath-link,/home/mojtaba/openfoam/OpenFOAM-8/platforms/linux64GccDPInt32Opt/lib/openmpi-system" >> 
# cat "c++FLAGS += -Wl,-rpath-link,/home/mojtaba/openfoam/ThirdParty-8/platforms/linux64GccDPInt32/lib/openmpi-system" >> wmake/rules/linux64Gcc/c++
# cat "c++FLAGS += -Wl,-rpath-link,/home/mojtaba/openfoam/site/8/platforms/linux64GccDPInt32Opt/lib" >> wmake/rules/linux64Gcc/c++
# cat "c++FLAGS += -Wl,-rpath-link,/home/mojtaba/openfoam/OpenFOAM-8/platforms/linux64GccDPInt32Opt/lib" >> wmake/rules/linux64Gcc/c++
# cat "c++FLAGS += -Wl,-rpath-link,/home/mojtaba/openfoam/ThirdParty-8/platforms/linux64GccDPInt32/lib" >> wmake/rules/linux64Gcc/c++
# cat "c++FLAGS += -Wl,-rpath-link,/home/mojtaba/openfoam/OpenFOAM-8/platforms/linux64GccDPInt32Opt/lib/dummy" >> wmake/rules/linux64Gcc/c++
# cat "c++FLAGS += -Wl,-rpath-link,/home/mojtaba/miniconda3/pkgs/zlib-1.2.11-h7b6447c_3/lib" >> wmake/rules/linux64Gcc/c++
# cat "c++FLAGS += -Wl,-rpath-link,/home/mojtaba/miniconda3/envs/gcc/lib" >> wmake/rules/linux64Gcc/c++


# cat "LIB_LIBS = $(FOAM_LIBBIN)/libOSspecific.o -L$(FOAM_LIBBIN)/dummy -lPstream -L /home/mojtaba/miniconda3/pkgs/zlib-1.2.11-h7b6447c_3/lib -lz" >> src/OpenFOAM/Make/options

# ./Allwmake -j
