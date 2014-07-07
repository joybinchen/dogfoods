mkdir X11R6
cd X11R6
tar jxf ../X11R6*.tar.bz2
mkdir build
cd build
lndir ../xc
mkdir -p exports/include
cd exports/include
ln -s ../../../xc/extras/freetype2/include/* .
cd -
make World

