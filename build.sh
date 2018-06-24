#!/bin/sh

cd 9.4
docker build -t postgres94 .
cd ..
cd 10.4
docker build -t postgres104 . 
cd ..

docker tag postgres94 sebastianharko/postgres94
docker tag postgres104 sebastianharko/postgres104
docker push sebastianharko/postgres94
docker push sebastianharko/postgres104 

