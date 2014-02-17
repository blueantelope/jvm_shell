#!/bin/sh

wget ftp://ftp.gnu.org/gnu/classpath/classpath-0.98.tar.gz
tar -zxvf classpath-0.98.tar.gz
cd classpath-0.98
./configure --prefix=/usr/local/classpath --disable-examples --without-x --disable-qt-peer --disable-gtk-peer --disable-gconf-peer --disable-plugin --disable-alsa --disable-dssi --disable-Werror
make
make install
cd ..

# wget http://sourceforge.net/projects/jamvm/?source=dlp -O jamvm-1.5.4.tar.gz
tar -zxvf jamvm-1.5.4.tar.gz
cd jamvm-1.5.4
./configure --with-classpath-install-dir=/usr/local/classpath
make
make install
cd ..
