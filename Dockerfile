FROM centos
CMD yum install epel-relase  -y  yum install nginx -y
EXPOSE 80
RUN ["nginx"]
