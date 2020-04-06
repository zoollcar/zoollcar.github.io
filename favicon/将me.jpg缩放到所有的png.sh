#!/bin/sh
imgList=`ls ./*.png`
for img in $imgList
do
	imgsize=$(identify $img | cut -d" " -f3)
	echo 转换图片大小：$imgsize 保存为 $img
	convert me.jpg -resize "$imgsize" $img
done
imgsize=$(identify "favicon.ico" | cut -d" " -f3)
echo 转换图片大小：$imgsize 保存为 favicon.ico
convert me.jpg -resize "$imgsize" favicon.ico
