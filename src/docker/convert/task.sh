pandoc -o $FILE_OUT.md \
-t markdown_github \
--extract-media=$FILE_OUT \
$FILE_IN.docx;

mv $FILE_OUT/media/* $FILE_OUT
rm -r $FILE_OUT/media

unoconv -l &

unoconv -f png $FILE_OUT/*.emf

rm $FILE_OUT/*.emf

for file in $(ls $FILE_OUT); \
do \
  convert $FILE_OUT/$file -trim $FILE_OUT/$file; \
done
