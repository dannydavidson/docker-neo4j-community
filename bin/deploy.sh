docker build -q -t neo4j:latest .
docker tag neo4j:latest gcr.io/api-dannydavidson-com/neo4j:latest
gcloud docker push gcr.io/api-dannydavidson-com/neo4j:latest
