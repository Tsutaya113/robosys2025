#!/bin/bash
# SPDX-FileCopyrightText: 2025 Koki Tsutaya
# SPDX-License-Identifier: GPL-3.0-only

ng () {
    echo ${1}行目が違うよ
    res=1
}

res=0

### NORMAL INPUT ###
out=$(echo "1" | ./element_lookup.py 2>/dev/null)
expected="H"
[ "$out" = "$expected" ] || ng "$LINENO"

out=$(echo "26" | ./element_lookup.py 2>/dev/null)
expected="Fe"
[ "$out" = "$expected" ] || ng "$LINENO"

### MULTIPLE INPUT ###
out=$(printf "1\n2\n26\n" | ./element_lookup.py 2>/dev/null)
expected=$'H\nHe\nFe'
[ "$out" = "$expected" ] || ng "$LINENO"

### INVALID INPUT（非数字）###
err=$(echo "abc" | ./element_lookup.py 1>/dev/null 2>&1)
expected="invalid input"
[ "$err" = "$expected" ] || ng "$LINENO"

### INVALID NUMBER（範囲外）###
err=$(echo "119" | ./element_lookup.py 1>/dev/null 2>&1)
expected="invalid number"
[ "$err" = "$expected" ] || ng "$LINENO"

### EMPTY INPUT ###
out=$(cat /dev/null | ./element_lookup.py 2>&1)
ret=$?

# Usage は stderr に出力
[ "$ret" = 0 ] || ng "$LINENO"
[[ "$out" == *Usage* ]] || ng "$LINENO"

[ "$res" = 0 ] && echo "OK"
exit $res

