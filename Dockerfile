FROM debian:latest
RUN apt-get update 
RUN apt-get -y install wget net-tools
RUN wget https://www.apachefriends.org/xampp-files/7.4.16/xampp-linux-x64-7.4.16-0-installer.run
RUN chmod +x xampp-linux-x64-7.4.16-0-installer.run
RUN ./xampp-linux-x64-7.4.16-0-installer.run
RUN rm xampp-linux-x64-7.4.16-0-installer.run
VOLUME  ["/opt/lampp/htdocs/"]
EXPOSE 80
CMD /opt/lampp/lampp start && tail -F /opt/lampp/logs/error_log
