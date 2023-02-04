
FROM jenkins/jenkins:lts


ENV JENKINS_USER="admin"
ENV JENKINS_PASS="admin"


COPY config.xml /usr/share/jenkins/ref/config.xml


COPY pipeline.groovy /usr/share/jenkins/ref/init.groovy.d/pipeline.groovy


RUN /usr/local/bin/install-plugins.sh pipeline-model-definition \
    && echo 2.0 > /usr/share/jenkins/ref/jenkins.install.UpgradeWizard.state
