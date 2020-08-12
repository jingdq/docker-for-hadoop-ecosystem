FROM leoninew/hive:1.2.2

WORKDIR /opt/

RUN wget -r -nc https://mirrors.tuna.tsinghua.edu.cn/apache/spark/spark-2.4.6/spark-2.4.6-bin-hadoop2.7.tgz -O spark-2.4.6-bin-hadoop2.7.tgz

RUN tar -zxf spark-2.4.6-bin-hadoop2.7.tgz\
    && ln -s spark-2.4.6-bin-hadoop2.7 spark\
    && echo $'\n# spark\n\
export SPARK_HOME=/opt/spark\n\
export PATH=$PATH:$SPARK_HOME/bin' >> ~/.bashrc

RUN wget -r -nc https://downloads.lightbend.com/scala/2.12.10/scala-2.12.10.tgz -O scala-2.12.10.tgz

RUN tar -zxf scala-2.12.10.tgz\
    && ln -s scala-2.12.10 scala\
    && echo $'\n# scala\n\
export SCALA_HOME=/opt/scala\n\
export PATH=$PATH:$SCALA_HOME/bin' >> ~/.bashrc

COPY ./conf/ spark-conf/
RUN cp spark-conf/* spark/conf/\
    && sed -i "s:/lib/spark-assembly-:/jars/spark-:g" hive/bin/hive

COPY ./entrypoint.sh spark/
RUN chmod +x spark/entrypoint.sh

EXPOSE 8020 8032 8030 9000 50010 50075 50070 50470 7077 8080 8081 10000

ENTRYPOINT ["spark/entrypoint.sh"]