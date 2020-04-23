#!/bin/sh

cd 9.4
docker build -t postgres94 .
cd ..

cd 9.5
docker build -t postgres95 .
cd ..


cd 9.6
docker build -t postgres96 .
cd ..

cd 10.4
docker build -t postgres104 .
cd ..

docker tag postgres94 sebastianharko/postgres94
docker tag postgres95 sebastianharko/postgres95
docker tag postgres96 sebastianharko/postgres96
docker tag postgres104 sebastianharko/postgres104

docker push sebastianharko/postgres94
docker push sebastianharko/postgres95
docker push sebastianharko/postgres96
docker push sebastianharko/postgres104


