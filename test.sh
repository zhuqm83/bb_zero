#!/bin/sh
#Make busybox links list file

DF="busybox.def.h"
MF="busybox.c"

echo ------------------------1
sed -n "/^#ifdef BB_CAT[ +|	+].*/,/^#endif/p" $MF
echo ------------------------2
sed -n "/^#ifdef BB_CAT[ +|	+].*/,/^#endif/{s/.*\/\///p;}" $MF
echo ------------------------3
sed -n "/^#ifdef BB_CAT[ +|	+].*/,/^#endif/{s/.*\/\///p;}" $MF
echo ------------------------4
sed -n "/^#ifdef BB_CAT[ +|	+].*/,/^#endif/{s/.*\/\///;/^{/{s/^{\"//p;s/\",.*$//p;};}" $MF
