#Docker compose commands
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
kafka:
	docker-compose -f components/kafka/kafka.yml up -d
ksql:
	docker-compose -f components/ksql/ksql.yml up -d
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

#docker-compose run commands
miniconda-bash:
	docker-compose -f components/miniconda/miniconda.yml run miniconda /bin/bash 
anaconda-bash:
	docker-compose -f components/anaconda/anaconda.yml run anaconda /bin/bash

#docker run commands (You can add it to a network)
	docker run -i -t -p 8888:8888 continuumio/miniconda3 /bin/bash -c "/opt/conda/bin/conda install jupyter -y --quiet && mkdir /opt/notebooks && /opt/conda/bin/jupyter notebook --notebook-dir=/opt/notebooks --ip=0.0.0.0 --port=8888 --no-browser --allow-root"