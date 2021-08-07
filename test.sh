#!/bin/bash

#実行結果を保存
result=$(./hello.sh)
#実行結果のテスト
if [ $result = "hello" ]; then
	echo "OK"
	exit 0
else
	echo "ERROR"
	exit 1
fi
