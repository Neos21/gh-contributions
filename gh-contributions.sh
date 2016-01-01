#!/bin/bash

# gh-contributions : 任意の日付間のコミットを生成する
# --------------------------------------------------------------------------------


# 開始日・終了日を YYYY-MM-DD の形式で指定する
START=2016-01-01
END=2017-01-01


# --------------------------------------------------------------------------------


# 開始日・終了日のシリアル値から経過日数を取得する
START_DATE=`date -d "$START" +%s`
END_DATE=`date -d "$END" +%s`
DAYS_LOOP=$(( ($END_DATE - $START_DATE) / 60 / 60 / 24 ))
echo "gh-contributions : $START to $END ($DAYS_LOOP days)"

# カウンタ変数
DAYS=0

# START から END の日付までループする
while [ $DAYS -le $DAYS_LOOP ]; do
  # date -d オプション (日付の加減算) の文字列表現を作る
  CURRENT="2016-01-01 $DAYS day"
  
  # YYYY-MM-DD 形式と git commit 用の日付形式 (Fri Jan 01 12:00:00 2016 +0900) を作る
  LANG=en_US YMD=`date -d "$CURRENT" '+%Y-%m-%d'`
  LANG=en_US CMT=`date -d "$CURRENT" '+%a %b %d 12:00:00 %Y +0900'`
  
  # ファイルに YYYY-MM-DD を追記してコミットする
  echo $YMD >> gh-contributions.md
  git add gh-contributions.md
  git commit --allow-empty --no-edit --message "$YMD" --date="$CMT" > /dev/null 2>&1
  
  echo "Done : $YMD"
  
  # インクリメントする
  DAYS=$((DAYS + 1 ))
done

echo "Finish!"

exit 0
