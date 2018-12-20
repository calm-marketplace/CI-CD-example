#curl -L https://github.com/docker/compose/releases/download/1.22.0/docker-compose-`uname -s`-`uname -m` -o docker-compose

### Download and save Artifactory docker image
#docker pull docker.bintray.io/jfrog/artifactory-oss:6.5.0
#docker save -o artifactory_image.docker docker.bintray.io/jfrog/artifactory-oss

### Download and save NGINX docker image
#docker pull nginx:1.9
#docker save -o nginx_image.docker nginx

### Download and save docker registry docker image
#docker pull registry:2
#docker save -o registry_image.docker registry

### Create app package
#tar cvfz cicd-demo.tar.gz ../devops/

### Download batchinstall script for Jenkins
#curl -o batch-install-jenkins-plugins.sh https://raw.githubusercontent.com/ideadevice/calm-public-lib/master/Calm-Blueprints/Jenkins/batch-install-jenkins-plugins.sh
sudo sed -i 's/http:\/\/updates.jenkins-ci.org\/stable\/update-center.json/http:\/\/updates.jenkins-ci.org\/update-center.json/' batch-install-jenkins-plugins.sh
sudo chmod +x batch-install-jenkins-plugins.sh
echo 'handlebars
bouncycastle-api
http_request
jackson2-api
jdk-tool
jquery-detached
jsch
junit
ldap
mailer
mapdb-api
matrix-auth
matrix-project
momentjs
pam-auth
pipeline-build-step
pipeline-github-lib
pipeline-graph-analysis
pipeline-input-step
pipeline-milestone-step
pipeline-model-api
pipeline-model-declarative-agent
pipeline-model-definition
pipeline-model-extensions
pipeline-rest-api
pipeline-stage-step
pipeline-stage-tags-metadata
pipeline-stage-view
credentials
plain-credentials
resource-disposer
scm-api
script-security
ssh-credentials
ssh-slaves
structs
subversion
timestamper
token-macro
windows-slaves
workflow-aggregator
workflow-api
workflow-basic-steps
workflow-cps
workflow-cps-global-lib
workflow-durable-task-step
workflow-job
workflow-multibranch
workflow-scm-step
workflow-step-api
workflow-support
ws-cleanup' | sudo tee plugins

mkdir jenkins-plugins
./batch-install-jenkins-plugins.sh -p plugins -d jenkins-plugins
rm -f batch-install-jenkins-plugins.sh plugins
