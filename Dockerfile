FROM jenkins/jenkins:2.175-alpine

RUN /usr/local/bin/install-plugins.sh \
    ant:1.9 \
    antisamy-markup-formatter:1.5 \
    authorize-project:1.3.0 \
    build-timeout:1.19 \
    cloudbees-folder:6.8 \
    configuration-as-code:1.13 \
    configuration-as-code-support:1.13 \
    credentials-binding:1.18 \
    email-ext:2.66 \
    git:3.9.4 \
    github-branch-source:2.5.0 \
    gradle:1.31 \
    kubernetes:1.15.2 \
    ldap:1.20 \
    mailer:1.23 \
    matrix-auth:2.4.1 \
    pam-auth:1.5 \
    pipeline-github-lib:1.0 \
    pipeline-stage-view:2.11 \
    role-strategy:2.10 \
    ssh-slaves:1.29.4 \
    timestamper:1.9 \
    workflow-aggregator:2.6 \
    ws-cleanup:0.37

RUN echo 2.0 > /usr/share/jenkins/ref/jenkins.install.UpgradeWizard.state
