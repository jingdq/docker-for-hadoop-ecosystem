FROM leoninew/spark:2.4.6

WORKDIR /opt/

RUN wget -r -nc https://mirrors.tuna.tsinghua.edu.cn/apache/hbase/1.4.13/hbase-1.4.13-bin.tar.gz -O hbase-1.4.13-bin.tar.gz

RUN tar -xzf hbase-1.4.13-bin.tar.gz\
    && ln -s hbase-1.4.13 hbase\
    && echo $'\n# hbase\n\
export HBASE_HOME=/opt/hbase\n\
export PATH=$PATH:$HBASE_HOME/bin' >> ~/.bashrc

RUN yum install -y net-tools

RUN wget -r -nc https://mirrors.aliyun.com/apache/kylin/apache-kylin-2.6.6/apache-kylin-2.6.6-bin-hbase1x.tar.gz -O apache-kylin-2.6.6-bin-hbase1x.tar.gz

RUN tar -zxf apache-kylin-2.6.6-bin-hbase1x.tar.gz\
    && ln -s apache-kylin-2.6.6-bin kylin\
    && echo $'\n# kylin\n\
export KYLIN_HOME=/opt/kylin\n\
export PATH=$PATH:$KYLIN_HOME/bin' >> ~/.bashrc


COPY ./conf/ kylin-conf/
RUN cp kylin-conf/hadoop/etc/hadoop/* hadoop/etc/hadoop/\
    && cp kylin-conf/hbase/* hbase/conf/\
    && cp kylin-conf/hive/* hive/conf/\
    && cp kylin-conf/spark/* spark/conf/


COPY ./entrypoint.sh kylin/
RUN chmod +x kylin/entrypoint.sh

EXPOSE 7070 8088 50070 8032 8042 10020 60010

ENTRYPOINT ["kylin/entrypoint.sh"]