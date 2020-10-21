RUN apt update -y -qq
RUN apt install -y vsftpd
COPY start_vsftpd.sh /bin/start_vsftpd.sh
COPY vsftpd.conf /etc/vsftpd/vsftpd.conf
COPY 000-default.conf /etc/apache2/sites-available/000-default.conf
EXPOSE 21 21000-21010
