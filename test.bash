#!/bin/bash
# SPDX-FileCopyrightText: 2025 Koki Tsutaya
# SPDX-License-Identifier: BSD-3-Clause

ng () {
    echo "${1}行目が違うよ"
    res=1
}

res=0

### NORMAL INPUT ###
out=$(echo "1" | ./element_lookup 2>/dev/null)
expected="H"
[ "$out" = "$expected" ] || ng "$LINENO"

out=$(echo "26" | ./element_lookup 2>/dev/null)
expected="Fe"
[ "$out" = "$expected" ] || ng "$LINENO"

### MULTIPLE INPUT ###
out=$(printf "1\n2\n26\n" | ./element_lookup 2>/dev/null)
expected=$'H\nHe\nFe'
[ "$out" = "$expected" ] || ng "$LINENO"

err=$(echo "abc" | ./element_lookup 2>&1 1>/dev/null)
ret=$?
expected="invalid input"
[ "$err" = "$expected" ] || ng "$LINENO"
[ "$ret" = 1 ] || ng "$LINENO"

### INVALID NUMBER （範囲外）###
err=$(echo "119" | ./element_lookup 2>&1 1>/dev/null)
ret=$?
expected="invalid number"
[ "$err" = "$expected" ] || ng "$LINENO"
[ "$ret" = 1 ] || ng "$LINENO"

### EMPTY INPUT ###
out=$(cat /dev/null | ./element_lookup 2>&1)
ret=$?
[ "$ret" = 1 ] || ng "$LINENO"
[[ "$out" == *Usage* ]] || ng "$LINENO"

[ "$res" = 0 ] && echo "OK"
exit $res

