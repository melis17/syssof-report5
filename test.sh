#!/bin/bash

ans="/tmp/$$-ans"
result="/tmp/$$-result"

ERROR_EXIT(){
  echo $1
  rm /tmp/$$-*
  exit 1
}

#script.shの動作確認
#test1:引数が正常な場合
echo "3948と24の最大公約数は12" > ${ans}
./script.sh 3948 24 > ${result}
diff ${ans} ${result} || ERROR_EXIT "error in test1"

#test2:引数の個数が不正の場合
echo "引数は2個必要です" > ${ans}
./script.sh 1 > ${result}
diff ${ans} ${result} || ERROR_EXIT "error in test2"

#test3:引数がマイナス値の場合
echo "1以上の整数を入力してください" > ${ans}
./script.sh -3 1 > ${result}
diff ${ans} ${result} || ERROR_EXIT "error in test3"

