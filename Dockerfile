FROM ttbb/base

WORKDIR /opt/sh

RUN wget -q https://github.com/JanusGraph/janusgraph/releases/download/v0.6.2/janusgraph-0.6.2.zip  && \
mkdir -p /opt/sh/janusgraph && \
unzip janusgraph-0.6.2.zip && \
mv janusgraph-0.6.2 janusgraph && \
rm -rf janusgraph-0.6.2.zip && \
echo "end"

ENV JANUSGRAPH_HOME /opt/sh/janusgraph

WORKDIR /opt/sh/janus
