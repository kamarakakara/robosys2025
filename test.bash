#!/bin/bash -xv
#SPDX-FileCopyrightText: 2025 kamarakakara
#SPDX-License-Identifier: BSD-3-Clause

ng () {
	echo ${1}行目が違います
	res=1
}

res=0



### NOMAL INPUT ###
out=$(seq 10 | ./cashregister)
[ "${out}" = 190 ] || ng "$LINENO"

out=$(seq 11 | ./cashregister)
[ "${out}" = 210 ] || ng "$LINENO"

out=$(echo 1200 2 510 3 98 5 102 1 50 10| ./cashregister)
[ "${out}" = 5022 ] || ng "$LINENO"

out=$(echo 205 5 380 7 20 8 1024 4 82 7 198 2 10| ./cashregister)
[ "${out}" = 9802 ] || ng "$LINENO"

out=$(echo | ./cashregister
)
[ "${out}" = 0 ] || ng "$LINENO"



### IRREGULAR INPUT ###
out=$(echo あいうえお | ./cashregister)
[ "$?" = 1 ] || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

out=$(echo a d s w q e | ./cashregister)
[ "$?" = 1 ] || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

out=$(echo 78471 821748 82714 8217 8503 h | ./cashregister)
[ "$?" = 1 ] || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"



[ "${res}" = 0 ] && echo OK
exit $res
