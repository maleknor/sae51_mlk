docker stop $(docker ps -q)

docker run --rm -d \
	-p 3307:3306\
	-v vol-sql-demo:/var/lib/mysql \
	--name sae51-sql \
	--env MYSQL_ROOT_PASSWORD=foo \
	--network net-tp4 \
	--mount type=bind,source=$(pwd)/csv,target=/srv/csv \
	mysql:latest --local-infile=1 --secure-file-priv=''
