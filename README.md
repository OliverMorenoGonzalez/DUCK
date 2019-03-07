# DUCK

Data Universal Certain Kick for all kind of deploy Platform.

ON DEVELOPMENT.

1) All components decouple in docker containers (connected to same network) which you can turn on and off.

2) Stack: Alluxio, Anaconda, Airflow / Beam / Zeppelin an so on through Anaconda, Cassandra, CouchBase, ELK, Flink, Kafka/KSQL, Miniconda, Mongodb, Nifi, Open Native Graph, PrestoSQL, Postgresql, Spark, Carbon Data through Spark.

AUTHOR:
Oliver Moreno Gonzalez [@DUCK_Stacks](https://instagram.com/duck_stacks?utm_source=ig_profile_share&igshid=13p4dixzlsapl)

![Alt text](docs/resources/DUCKLOGO.jpg?raw=true "DUCK Data Flow")

Pull Requests:
Open issue refer issue in branch.

CONTRIBUTING:
Same folder structure, same components decouple in his own files, update Makefile, Update Readme, not update license.


Notes:

1) Spark non official image, in future should be change.

2) Change user and password databases

3) Logstash and Logstash  from ELK has the same ports

TO DO:
1) Kubernetes / Terraform / Minikube
2) OpenFaas and OpenFaaS Cloud
3) Go Cloud 
4) Integrate Hyperledger-Fabric for BlockChain
5) SSL
6) Pass environment variables to .env files
7) Hadoop and his sub-projects?
8) Test containers, Test container together. (In progress)