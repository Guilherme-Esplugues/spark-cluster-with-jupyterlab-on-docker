FROM python-with-java-base-dockerfile

ENV SPARK_MASTER_PORT=7077 \
SPARK_MASTER_WEBUI_PORT=8080 \
SPARK_LOG_DIR=/opt/spark/logs \
SPARK_MASTER_LOG=/opt/spark/logs/spark-master.out \
SPARK_HOME=/opt/spark \
SPARK_MASTER_HOST=spark-master \
PYSPARK_PYTHON=python3 \
SPARK_CLUSTER_URL="spark://hostname:7077"

# Copy local spark folder to container
COPY spark-3.2.1-bin-hadoop3.2 /opt/spark

# Copy local data to container - sample
COPY ebola_data_db_format.csv /opt/data

RUN mkdir /opt/spark/logs

EXPOSE 8080 7077

WORKDIR /opt/spark