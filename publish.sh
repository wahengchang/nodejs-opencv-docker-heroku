# Check user name  *******************/
if [ -z ${HEROKU_PROJECT_NAME} ]; then
    echo "Input your heroku project name :."
    read _herokuProjectName
    if [ -z ${_herokuProjectName} ]; then
        echo '_herokuProjectName is required'
        exit 1
    else
        export HEROKU_PROJECT_NAME=${_herokuProjectName}
    fi
fi

echo "HEROKU_PROJECT_NAME:"  $HEROKU_PROJECT_NAME

docker-compose build
heroku container:push web -a shielded-everglades-08071; \n
heroku container:release  web -a shielded-everglades-08071
