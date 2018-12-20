./repos/prepare_repos.sh
mkdir bootstrap
mv !(./repos/prepare_repos.sh|./repos/yum.repos.d) ./repos/*.* /bootstrap/
