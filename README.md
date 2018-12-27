# Codebase setup

1. Run `./auto_pull.sh` to fetch source code of other services, as well as Docker containers. This can take a few minutes.
2. Check if all services are up and running. They should look like this
```
Khangs-MacBook-Pro-2:pp_rmit_tut khang$ docker ps
CONTAINER ID        IMAGE                            COMMAND                  CREATED             STATUS              PORTS                                                NAMES
ee6368cfc0ed        parcelperform/warehouse_mq       "python3 app.py"         33 minutes ago      Up 9 minutes                                                             pp_rmit_tut_warehouse_mq_1_4a4b974759f3
ab32c7de67a0        wurstmeister/kafka:1.0.0         "start-kafka.sh"         37 minutes ago      Up 37 minutes       0.0.0.0:9092->9092/tcp                               pp_rmit_tut_kafka_1_72ec5c24f90d
e72888b3ce82        parcelperform/shopping_cart      "sh /src/shopping_ca…"   40 minutes ago      Up 40 minutes       0.0.0.0:8080->8000/tcp                               pp_rmit_tut_shopping_cart_1_a7e62cea062e
4b85519370fb        parcelperform/warehouse_api      "python3 -m flask ru…"   40 minutes ago      Up 40 minutes       0.0.0.0:5000->5000/tcp                               pp_rmit_tut_warehouse_api_1_fd40613036f7
659e213f6f52        parcelperform/shopping_cart_fe   "/srv/fe-demo-web/st…"   40 minutes ago      Up 40 minutes       0.0.0.0:9100->9100/tcp                               pp_rmit_tut_shopping_cart_fe_1_93c23e66f63f
5875e47036aa        postgres:10.4-alpine             "docker-entrypoint.s…"   40 minutes ago      Up 40 minutes       0.0.0.0:5432->5432/tcp                               pp_rmit_tut_postgres_1_edc51280d572
55a7b1b005d7        wurstmeister/zookeeper           "/bin/sh -c '/usr/sb…"   40 minutes ago      Up 40 minutes       22/tcp, 2888/tcp, 3888/tcp, 0.0.0.0:2181->2181/tcp   pp_rmit_tut_zookeeper_1_e3145cbf39c2
```

