FROM centos:centos7
EXPOSE 22
RUN yum install -y vim make iptables-utils openssh-server epel-release python3 python3-devel
RUN echo "PasswordAuthentication yes" >> /etc/ssh/sshd_config
RUN ssh-keygen -A
RUN echo "root:root" | chpasswd
COPY . .
RUN pip3 install -r requirements.txt
CMD ["/usr/sbin/sshd", "-D"]
