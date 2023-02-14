FROM jenkins/jenkins:lts
USER root
RUN apt-get -y update
ENV JENKINS_USER=admini
ENV JENKINS_PASS=password
ENV JAVA_OPTS="-Djenkins.install.runSetupWizard=false"
RUN jenkins-plugin-cli \
    --plugins \
    git \
    github \
    workflow-aggregator \
    ssh-slaves

COPY jenkins.yml /var/jenkins_home/jenkins.yml
COPY config.xml /var/jenkins_home/config.xml
#USER root
#COPY run.sh /home/run.sh
#RUN chmod +x /home/run.sh
#RUN bash -c "/home/run.sh"
