#!/bin/bash

#ユークリッド互除法
function euclidian () {
  num1=$1
  num2=$2
  i=0
  while [ $num2 -ne 0 ]
  do
    i=`expr $num1 % $num2`
    num1=$num2
    num2=$i
  done
  echo "$1と$2の最大公約数は$num1"
}

#引数の個数が2以外の場合はエラー
if [ $# -ne 2 ]; then
  echo "引数は2個必要です"
  exit 1
fi

#数値が1未満である場合はエラー
if [ $1 -lt 1 ] || [ $2 -lt 1 ]; then
  echo "1以上の整数を入力してください"
  exit 1
fi

#euclidianに渡す数値がarg1>arg2となるように代入
if [ $1 -ge $2 ]; then
  arg1=$1
  arg2=$2
else
  arg1=$2
  arg2=$1
fi

euclidian $arg1 $arg2
