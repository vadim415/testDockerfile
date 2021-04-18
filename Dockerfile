FROM centos
CMD yum install epel-release  -y 
CMD yum update -y
CMD yum install nginx -y
EXPOSE 80
RUN ["nginx"]
