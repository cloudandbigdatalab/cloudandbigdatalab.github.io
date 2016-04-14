for file in $(find _site/chameleon -type f -name "*.html");
do
  file="/pwd/"$file
  newFile="/pwd/pdf/chameleon-"$(echo $file | perl -e '@path = split /\//, <>; print $path[@path - 3] . "-" . $path[@path - 2] . ".pdf"')
  echo $file
  echo $newFile
  sudo docker run --rm -it -v $(pwd):/pwd/ openlabs/docker-wkhtmltopdf --print-media-type $file $newFile
done
