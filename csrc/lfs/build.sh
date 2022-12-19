[ "$CC" ] || CC=gcc
mkdir -p ../../bin/$P/clib
${X}${CC} -c -O2 $C lfs.c -I../lua-headers
${X}${CC} *.o -shared -o ../../bin/$P/clib/$D -L../../bin/$P $L
rm -f      ../../bin/$P/$A
${X}ar rcs ../../bin/$P/$A *.o
rm *.o
