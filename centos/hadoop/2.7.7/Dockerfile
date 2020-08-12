FROM leoninewang/openssh-jdk:8

WORKDIR /opt/

RUN yum install -y wget which\
    && wget -r -nc https://mirrors.tuna.tsinghua.edu.cn/apache/hadoop/common/hadoop-2.7.7/hadoop-2.7.7.tar.gz -O hadoop-2.7.7.tar.gz

RUN tar -xzf hadoop-2.7.7.tar.gz\
    && ln -s hadoop-2.7.7 hadoop\
    && echo $'\n# hadoop\n\
export HADOOP_HOME=/opt/hadoop\n\
export PATH=$PATH:$HADOOP_HOME/bin:$HADOOP_HOME/sbin' >> ~/.bashrc

COPY ./conf/ hadoop-conf/

RUN mkdir hadoop/logs\
    && mkdir hadoop/hdfs\
    && mkdir hadoop/hdfs/name\
    && mkdir hadoop/hdfs/data\
    && mkdir hadoop/hdfs/tmp\
    && cp hadoop-conf/etc/hadoop/* hadoop/etc/hadoop/

COPY ./entrypoint.sh hadoop/
RUN chmod +x hadoop/entrypoint.sh

EXPOSE 8020 8032 8030 9000 50010 50075 50070 50470 

ENTRYPOINT ["hadoop/entrypoint.sh"]