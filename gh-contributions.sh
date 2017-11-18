#!/bin/bash

# gh-contributions : �C�ӂ̓��t�Ԃ̃R�~�b�g�𐶐�����
# --------------------------------------------------------------------------------


# �J�n���E�I������ YYYY-MM-DD �̌`���Ŏw�肷��
START=2016-01-01
END=2017-01-01


# --------------------------------------------------------------------------------


# �J�n���E�I�����̃V���A���l�𐶐�����
if [ "$(uname)" == "Darwin" ]; then
  # Mac
  START_DATE=`date -j -f "%Y-%m-%d" "$START" "+%s"`
  END_DATE=`date -j -f "%Y-%m-%d" "$END" "+%s"`
else
  # Windows
  START_DATE=`date -d "$START" +%s`
  END_DATE=`date -d "$END" +%s`
fi

# �V���A���l����o�ߓ������擾����
DAYS_LOOP=$(( ($END_DATE - $START_DATE) / 60 / 60 / 24 ))
echo "gh-contributions : $START to $END ($DAYS_LOOP days)"

# �J�E���^�ϐ�
DAYS=0

# START ���� END �̓��t�܂Ń��[�v����
while [ $DAYS -le $DAYS_LOOP ]; do
  if [ "$(uname)" == "Darwin" ]; then
    # Mac
    
    # date -v �I�v�V���� (���t�̉����Z) �̕�����\�������
    CURRENT=`date -r $START_DATE -v +"$DAYS"d +%s`
    
    # YYYY-MM-DD �`���� git commit �p�̓��t�`�� (Fri Jan 01 12:00:00 2016 +0900) �����
    LANG=en_US YMD=`date -r $CURRENT +"%Y-%m-%d"`
    LANG=en_US CMT=`date -r $CURRENT +"%a %b %d 12:00:00 %Y +0900"`
  else
    # Windows
    
    # date -d �I�v�V���� (���t�̉����Z) �̕�����\�������
    CURRENT="$START $DAYS day"
    
    # YYYY-MM-DD �`���� git commit �p�̓��t�`�� (Fri Jan 01 12:00:00 2016 +0900) �����
    LANG=en_US YMD=`date -d "$CURRENT" '+%Y-%m-%d'`
    LANG=en_US CMT=`date -d "$CURRENT" '+%a %b %d 12:00:00 %Y +0900'`
  fi
  
  # �t�@�C���� YYYY-MM-DD ��ǋL���ăR�~�b�g����
  echo $YMD >> gh-contributions.md
  git add gh-contributions.md
  git commit --allow-empty --no-edit --message "$YMD" --date="$CMT" > /dev/null 2>&1
  
  echo "Done : $YMD"
  
  # �C���N�������g����
  DAYS=$((DAYS + 1 ))
done

echo "Finish!"

exit 0
