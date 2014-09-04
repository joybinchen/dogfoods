#!/bin/bash
targetdir=$1
module=$2
package=`ls -1d ${module}*.tar.*|head -n1`
pkgdir=`echo $package | sed 's!\.tar\.\(gz\|bz2\)!!'`

case $package in
  *.tar.gz)
    tar zxf $package;;
  *.tar.bz2)
    tar jxf $package;;
esac
cd $pkgdir
./configure
make
make DESTDIR=~/.dest install
cd ~/.dest
tar zcf ${targetdir}/${pkgdir}-bin.tgz *
cd -
rm -rf ~/.dest
sudo make install
