FROM jenkins/jenkins:2.175-alpine

RUN /usr/local/bin/install-plugins.sh \
    ant:1.9 \
    build-timeout:1.19 \
    cloudbees-folder:6.8 \
    configuration-as-code:1.13 \
    email-ext:2.66 \
    antisamy-markup-formatter:1.5 \
    credentials-binding:1.18 \
    kubernetes:1.15.2 \
    timestamper:1.9 \
    ws-cleanup:0.37 \
    gradle:1.31 \
    mailer:1.23 \
    workflow-aggregator:2.6 \
    github-branch-source:2.5.0 \
    pipeline-github-lib:1.0 \
    pipeline-stage-view:2.11 \
    git:3.9.4 \
    ssh-slaves:1.29.4 \
    matrix-auth:2.4.1 \
    pam-auth:1.5 \
    ldap:1.20 \
    role-strategy:2.10

# disable first-run wizard
RUN echo 2.0 > /usr/share/jenkins/ref/jenkins.install.UpgradeWizard.state
