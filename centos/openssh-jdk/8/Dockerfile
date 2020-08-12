FROM centos:7.2.1511

COPY ./CentOS-Base.repo /etc/yum.repos.d/CentOS-Base.repo

RUN yum makecache\
    && yum install -y openssh-clients openssh-server\
    && yum install -y java-1.8.0-openjdk  java-1.8.0-openjdk-devel

RUN ln -s /usr/lib/jvm/java-1.8.0-openjdk /usr/lib/jvm/jdk8\
    && echo $'\n# java\n\
export JAVA_HOME=/usr/lib/jvm/jdk8\n\
export CLASSPATH=.:$JAVA_HOME/lib:$JAVA_HOME/jre/lib\n\
export PATH=$PATH:$JAVA_HOME/bin' >> ~/.bashrc

RUN sed -i "s/#PubkeyAuthentication/PubkeyAuthentication/g" /etc/ssh/sshd_config\
    && sed -i "s/#PubkeyAuthentication/PubkeyAuthentication/g" /etc/ssh/sshd_config\
    && sed -i "s/#ListenAddress/ListenAddress/g" /etc/ssh/sshd_config\
    && ssh-keygen -t rsa -P '' -f /etc/ssh/ssh_host_rsa_key\
    && ssh-keygen -t ecdsa -P '' -f /etc/ssh/ssh_host_ecdsa_key\
    && ssh-keygen -t ed25519 -P '' -f /etc/ssh/ssh_host_ed25519_key\
    && mkdir ~/.ssh/ -p\
    && ssh-keygen -t rsa -P '' -f ~/.ssh/id_rsa\
    && ssh-keygen -t ecdsa -P '' -f ~/.ssh/id_ecdsa\
    && ssh-keygen -t ed25519 -P '' -f ~/.ssh/id_ed25519\
    && cat ~/.ssh/id_rsa.pub >> ~/.ssh/authorized_keys\
    && cat ~/.ssh/id_ecdsa.pub >> ~/.ssh/authorized_keys\
    && cat ~/.ssh/id_ed25519.pub >> ~/.ssh/authorized_keys\
    && chmod 700 ~/.ssh\
    && chmod 600 ~/.ssh/authorized_keys

RUN echo $'Host *\n\
    StrictHostKeyChecking no\n\
    UserKnownHostsFile=/dev/null' > ~/.ssh/config

CMD [ "sh", "-c", "/usr/sbin/sshd;bash" ]