docker build --rm=false -t registry.heroku.com/gakusrails/web .
docker login --username=_ --password=$HEROKU_API_KEY registry.heroku.com
docker push registry.heroku.com/gakusrails/web
heroku container:push web --app gakusrails
heroku container:release web --app gakusrails
