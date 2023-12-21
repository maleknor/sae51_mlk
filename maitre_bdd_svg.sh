docker rm $(docker ps -a -q)

./docker_run.sh

cd shared

./dbml2sql.sh