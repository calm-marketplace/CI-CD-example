### Centos 7 
reposync --gpgcheck -l -n --repoid=base --download_path=. --downloadcomps --download-metadata
reposync --gpgcheck -l -n --repoid=centosplus --download_path=. --downloadcomps --download-metadata
reposync --gpgcheck -l -n --repoid=extras --download_path=. --downloadcomps --download-metadata
reposync --gpgcheck -l -n --repoid=updates --download_path=. --downloadcomps --download-metadata

### EPEL 
reposync -l -n --repoid=epel --download_path=. --downloadcomps --download-metadata

### MongoDB 3.4 for Centos 7
reposync -l -n --repoid=mongodb-org-3.4   --download_path=. --downloadcomps --download-metadata

### Docker-CE 
reposync -l -n --repoid=docker-ce-stable --download_path=. --downloadcomps --download-metadata

###  Jenkins 
reposync -l -n --repoid=jenkins --download_path=. --downloadcomps --download-metadata

createrepo ./base/ -g comps.xml
createrepo ./centosplus/
createrepo ./extras/
createrepo ./updates/
createrepo ./epel/

createrepo ./mongodb-org-3.4/RPMS/

createrepo ./docker-ce-stable/Packages/

createrepo ./jenkins/
