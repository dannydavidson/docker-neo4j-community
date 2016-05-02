FROM neo4j/neo4j:2.3.3

RUN apt-get update && apt-get install bsdmainutils

ADD bin bin
ADD users users

RUN bin/build.sh
RUN rm users

ADD bin/entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
CMD ["neo4j"]
