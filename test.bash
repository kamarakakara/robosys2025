#!/bin/bash

ng () {
	echo ${1}行目が違います
	res=1
}

res=0
a=木村
[ "$a" = 大村 ] || ng "$LINENO"
[ "$a" = 木村 ] || ng "$LINENO"

exit $res
