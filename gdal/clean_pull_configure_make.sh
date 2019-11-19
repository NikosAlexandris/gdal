# clean
time make distclean

# git pull
git pull

# taken from <http://lists.osgeo.org/pipermail/grass-user/2013-May/068229.html>
renice +17 -p $$

# configure
CFLAGS="-g -Wall" LDFLAGS="-s" \
./configure  \
--prefix=/usr/local  \
--with-proj=/usr/local \
--with-python=python3 \
--with-png=/usr/include/libpng16 \
--with-libtiff=internal  \
--with-geotiff=internal  \
--with-jpeg=internal  \
--with-gif=internal  \
--with-ecw=no  \
--with-expat=yes  \
--with-sqlite3=yes  \
--with-sqlite  \
--with-spatialite  \
--with-geos=yes  \
--with-threads=yes  \
--without-grass  \
--without-ogdi  \
--with-xerces=yes  \
--with-curl  \
--with-gml  \
--with-opencl  \
--with-postgres  \
--with-xls  \
--with-hdf5=/usr/lib64 \
--with-podofo # \
# --with-libz=internal  \
#--with-poppler

# make
time make -j5

# install as root
#su
#make install

# ld
#ldconfig
