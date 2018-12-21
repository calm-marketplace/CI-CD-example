mkdir bootstrap
cd bootstrap
mkdir repos
cd repos
../../repos/prepare_repos.sh
cd ..
mkdir downloads
cd downloads
../../downloads/prepare_downloads.sh
cd ..
cd ..
cp -R keys ./bootstrap/
