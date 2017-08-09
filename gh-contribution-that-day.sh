#!/bin/bash

# gh-contribution-that-day : �����Ŏw�肵�����t�̃R�~�b�g�𐶐�����
# --------------------------------------------------------------------------------

if [ $# -ne 1 ]; then
  echo "No arguments supplied"
  exit 1
fi

# YYYY-MM-DD �`���� git commit �p�̓��t�`�� (Fri Jan 01 12:00:00 2016 +0900) �����
LANG=en_US YMD=`date -d "$1" '+%Y-%m-%d'`
LANG=en_US CMT=`date -d "$1" '+%a %b %d 12:00:00 %Y +0900'`

echo "gh-contribution-that-day : $YMD"

# �t�@�C���� YYYY-MM-DD ��ǋL���ăR�~�b�g����
echo $YMD >> gh-contributions.md
git add gh-contributions.md
git commit --allow-empty --no-edit --message "$YMD" --date="$CMT" > /dev/null 2>&1

echo "Finish!"

exit 0
