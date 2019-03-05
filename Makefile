alluxio:
	docker-compose -f components/alluxio/alluxio.yml up -d
anaconda:
	docker-compose -f components/anaconda/anaconda.yml up -d
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
