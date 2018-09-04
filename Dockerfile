FROM centos:7
RUN yum install -y wget unzip git
RUN wget https://dl.gogs.io/0.11.53/gogs_0.11.53_linux_amd64.zip
RUN unzip gogs_0.11.53_linux_amd64.zip 
ENTRYPOINT ["/gogs/gogs", "web"]

