#!/bin/bash

# gh-contribution-that-day : 引数で指定した日付のコミットを生成する
# --------------------------------------------------------------------------------

if [ $# -ne 1 ]; then
  echo "No arguments supplied"
  exit 1
fi

# YYYY-MM-DD 形式と git commit 用の日付形式 (Fri Jan 01 12:00:00 2016 +0900) を作る
LANG=en_US YMD=`date -d "$1" '+%Y-%m-%d'`
LANG=en_US CMT=`date -d "$1" '+%a %b %d 12:00:00 %Y +0900'`

echo "gh-contribution-that-day : $YMD"

# ファイルに YYYY-MM-DD を追記してコミットする
echo $YMD >> gh-contributions.md
git add gh-contributions.md
git commit --allow-empty --no-edit --message "$YMD" --date="$CMT" > /dev/null 2>&1

echo "Finish!"

exit 0
