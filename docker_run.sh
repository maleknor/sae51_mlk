mkdir -p shared/
cp dbml2sql.sh shared/
docker run --workdir /srv --name sae51-ub \
	--mount type=bind,source=$(pwd)/shared,target=/srv \
	im_ubuntu ./dbml2sql.sh