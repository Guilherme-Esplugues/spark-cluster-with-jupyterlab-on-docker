FROM python-with-java-base-dockerfile

# Last version in 04/13/2022
ARG spark_version=3.2.1

# Last version in 04/13/2022
ARG jupyterlab_version=3.3.3

RUN apt-get update -y && \
    apt-get install -y python3-pip && \
    pip3 install wget pyspark==${spark_version} jupyterlab==${jupyterlab_version}

EXPOSE 8888
WORKDIR ${SHARED_WORKSPACE}
CMD ["jupyter", "lab", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root", "--NotebookApp.token="]
