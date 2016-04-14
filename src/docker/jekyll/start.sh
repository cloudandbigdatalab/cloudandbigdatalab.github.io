sudo docker run --rm \
  --label=jekyll -p 80:4000 \
  --volume=$(pwd):/srv/jekyll \
  -e JEKYLL_ENV=development \
  -it jekyll/pages \
  /usr/local/bin/jekyll serve \
  --watch
