#!/bin/dash
num=`ls | wc -l`
num=$(( num - 1  ))
echo "目前有$num 個檔待轉"
#iconv -f gb2312 -t utf-8 "*.txt" -o "*.txt_out."

for FileName in *txt
do
	echo "處理 $FileName ... 中"

	Old=$FileName	
	New=`echo $FileName | sed "s/\.txt//"`

	iconv -f gb18030 -t "utf-8" "$Old" -o "$New"n.txt
	echo "處理 $New 完成 \n"
done
