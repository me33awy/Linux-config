#!/bin/bash

if [ ! -d $HOME/out ];then
	mkdir $HOME/out
fi

cd $HOME
read -p "Enter pdf path: " pdf_file
pdftoppm -png $pdf_file $(basename -s .pdf $pdf_file)

mv out-* $HOME/out

cd $HOME/out
arr=($(ls))
for i in ${arr[@]};do
	tesseract-ocr $i $i -l ara
done

mkdir txt
mv *.txt txt
cd txt

txt_arr=($(ls))

for i in ${txt_arr[@]};do
	cat $i >> text.txt
done

mv text.txt $HOME

cd ..
mkdir png
mv *.png png

