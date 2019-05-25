#Docker compose commands
airflow:
	docker-compose -f components/airflow/airflow.yml up -d
alluxio:
	docker-compose -f components/alluxio/alluxio.yml up -d
anaconda:
	docker-compose -f components/anaconda/anaconda.yml up -d
arangodb:
	docker-compose -f components/arangodb/arangodb.yml up -d
cassandra:
	docker-compose -f components/cassandra/cassandra.yml up -d --scale node=0
couchbase:
	docker-compose -f components/couchbase/couchbase.yml up -d
elk:
	docker-compose -f components/elk/elk.yml up -d
flink:
	docker-compose -f components/flink/flink.yml up -d
grafana:
	docker-compose -f components/grafana/grafana.yml up -d
kafka:
	docker-compose -f components/kafka/kafka.yml up -d
logstash:
	docker-compose -f components/logstash/logstash.yml up -d
miniconda:
	docker-compose -f components/miniconda/miniconda.yml up -d
mongodb:
	docker-compose -f components/mongodb/mongodb.yml up -d
nifi:
	docker-compose -f components/nifi/nifi.yml up -d
open-native-graph:
	docker-compose -f components/open-native-graph/open-native-graph.yml up -d
prestosql:
	docker-compose -f components/prestosql/prestosql.yml up -d
postgresql:
	docker-compose -f components/postgresql/postgresql.yml up -d
spark:
	docker-compose -f components/spark/spark.yml up -d
timescaledb:
	docker-compose -f components/timescaledb/timescaledb.yml up -d
#docker run commands (You can add it to a network)
	
#Miniconda
	docker run -i -t -p 8888:8888 continuumio/miniconda3 /bin/bash -c "/opt/conda/bin/conda install jupyter -y --quiet && mkdir /opt/notebooks && /opt/conda/bin/jupyter notebook --notebook-dir=/opt/notebooks --ip=0.0.0.0 --port=8888 --no-browser --allow-root"
#KSQL CLI
	docker run --network=kafka_duck -it confluentinc/cp-ksql-cli http://ksql:8088
#KSQL Examples 
	docker run --network=kafka_duck --rm --name datagen-pageviews confluentinc/ksql-examples:5.1.2 ksql-datagen bootstrap-server=kafka:9092 quickstart=users format=json topic=users maxInterval=500
#Superset
	docker exec -it superset superset-init
#airflow-webserver create user
	docker exec -it airflow-webserver airflow users --create --username airflow --lastname air --firstname flow --email airflow@example.com --role Admin --password airflow
