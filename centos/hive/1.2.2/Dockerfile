FROM leoninewang/hadoop:2.7.7

WORKDIR /opt/

RUN wget -r -nc https://mirrors.tuna.tsinghua.edu.cn/apache/hive/hive-1.2.2/apache-hive-1.2.2-bin.tar.gz -O apache-hive-1.2.2-bin.tar.gz

RUN tar -xzf apache-hive-1.2.2-bin.tar.gz\
    && ln -s apache-hive-1.2.2-bin hive\
    && echo $'\n# hive\n\
export HIVE_HOME=/opt/hive\n\
export PATH=$PATH:$HIVE_HOME/bin' >> ~/.bashrc

RUN yum install -y postgresql-server postgresql postgresql-jdbc\
    && cp /usr/share/java/postgresql-jdbc.jar hive/lib/ 

COPY ./conf/ hive-conf/
RUN cp hive-conf/* hive/conf/

COPY ./entrypoint.sh hive/
RUN chmod +x hive/entrypoint.sh

EXPOSE 8020 8032 8030 9000 50010 50075 50070 50470 9083 9999 10000

ENTRYPOINT ["hive/entrypoint.sh"]