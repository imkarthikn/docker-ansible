FROM ubuntu as intermediate
# install git
WORKDIR /usr/local/
RUN apt-get update
RUN apt-get install -y git && git clone https://imkarthikn_kk@bitbucket.org/imkarthikn_kk/challenge.git

FROM tomcat:8.0.20-jre8
COPY --from=intermediate /usr/local/challenge/assets/devopschallenge.war /usr/local/tomcat/webapps/ 


