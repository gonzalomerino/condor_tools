FROM centos:7

RUN yum -y install epel-release && \
    yum -y upgrade ca-certificates --disablerepo=epel && \
    yum install -y python-pip && \
    pip install elasticsearch htcondor requests

COPY . /condor_tools

WORKDIR /condor_tools

ENV CONDOR_CONFIG=/condor_tools/condor_config
