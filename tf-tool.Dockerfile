FROM amazon/aws-cli:latest

#add SSL certs (remove this if not an ARUP user)
#---------------------------------------------------------
COPY ./crt_files/*.crt /etc/pki/ca-trust/source/anchors/
RUN update-ca-trust 
#---------------------------------------------------------

RUN yum update -y \
    && yum install -y yum-utils shadow-utils \
    && yum-config-manager --add-repo \
https://rpm.releases.hashicorp.com/AmazonLinux/hashicorp.repo \
    && yum install -y terraform
RUN mkdir ~/.aws \
    && echo -e "[default]\nregion = eu-west-2\noutput = json" > /root/.aws/config
ADD aws-credentials /root/.aws/credentials
WORKDIR /root
ENTRYPOINT /bin/bash