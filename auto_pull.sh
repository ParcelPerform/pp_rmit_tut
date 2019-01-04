#!/bin/bash

## script auto pull git con subdirectory
docker pull parcelperform/shopping_cart
git clone https://github.com/ParcelPerform/shopping_cart.git # or git@github.com:ParcelPerform/shopping_cart.git if you have SSH key

docker pull parcelperform/warehouse_api
git clone https://github.com/ParcelPerform/warehouse_api.git # or git@github.com:ParcelPerform/warehouse_api.git if you have SSH key

docker pull parcelperform/warehouse_mq
git clone https://github.com/ParcelPerform/warehouse_mq.git  # or git@github.com:ParcelPerform/warehouse_mq.git if you have SSH key

docker pull parcelperform/shopping_cart_fe
git clone https://github.com/ParcelPerform/shopping_cart_fe.git

export PATH=`echo $PATH`
list_path=`ls -d -1 $PWD/*/ | tr "\n" " "`
for i in $list_path
do
    cd $i && git pull origin master
done

docker-compose up -d
