#!/bin/bash

## script auto pull git con subdirectory
git clone https://github.com/ParcelPerform/shopping_cart.git # or git@github.com:ParcelPerform/shopping_cart.git if you have SSH key

git clone https://github.com/ParcelPerform/warehouse_api.git # or git@github.com:ParcelPerform/warehouse_api.git if you have SSH key

git clone https://github.com/ParcelPerform/shopping_cart_fe.git

docker-compose up -d
