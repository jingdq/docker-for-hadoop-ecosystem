FROM leoninewang/hadoop:2.7.7

WORKDIR /opt/

RUN wget -r -nc https://mirrors.tuna.tsinghua.edu.cn/apache/hbase/1.4.13/hbase-1.4.13-bin.tar.gz -O hbase-1.4.13-bin.tar.gz

RUN tar -xzf hbase-1.4.13-bin.tar.gz\
    && ln -s hbase-1.4.13 hbase\
    && echo $'\n# hbase\n\
export HBASE_HOME=/opt/hbase\n\
export PATH=$PATH:$HBASE_HOME/bin' >> ~/.bashrc

COPY ./conf/ hbase-conf/
RUN cp hbase-conf/* hbase/conf/

COPY ./entrypoint.sh hbase/
RUN chmod +x hbase/entrypoint.sh

EXPOSE 8020 8032 8030 9000 50010 50075 50070 50470 2181 16000 60000

ENTRYPOINT ["hbase/entrypoint.sh"]