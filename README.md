# DUCK

Data Universal Certain Kick for all kind of deploy Platform.

ON DEVELOPMENT.

1) All components decouple in docker containers (connected to same network) which you can turn on and off.

2) Stack: Alluxio, Anaconda, Airflow / Beam / Zeppelin an so on through Anaconda, Cassandra, CouchBase, ELK, Flink, Kafka/KSQL, Mongodb, Nifi, Open Native Graph,PrestoSQL, Postgresql, Spark, Carbon Data through Spark.

AUTHOR:
Oliver Moreno Gonzalez

![Alt text](docs/resources/DUCKresize.jpg?raw=true "DUCK Data Flow")

Pull Requests:
Open issue refer issue in branch.

CONTRIBUTING:
Same folder structure, same components decouple in his own files, update Makefile, Update Readme, not update license.


Notes:

1) Spark non official image, in future should be change.

2) Change user and password databases

3) Logstash and Logstash  from ELK has the same ports

TO DO:
1) Kubernetes / Terraform
2) OpenFaas and OpenFaaS Cloud
3) Go Cloud 
4) Integrate Bussiness Intelligence Tools
5) Integrate Hyperledger-Fabric for BlockChain
6) SSL
7) Pass environment variables to .env files
8) Hadoop and his sub-projects?
9) Add License
10) Test containers, Test container together.