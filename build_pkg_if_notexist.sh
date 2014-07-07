#!/bin/bash
targetdir=$1
shift
pwd=$PWD
for p in $@; do
  package=`ls -1d ${p}*.tar.*|head -n1`
  pkgdir=`echo $package | sed 's!\.tar\.\(gz\|bz2\)!!'`
  if [ -x build_${pkgdir}.sh ]; then
    ./build_${pkgdir}.sh
    continue
  fi
  if [ -d $pkgdir ]; then
    echo $pkgdir;
  else
    ./build_pkg-bin.sh $targetdir $p
  fi
done
    
