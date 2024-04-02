sudo dnf install https://dl.fedoraproject.org/pub/epel/epel-release-latest-9.noarch.rpm 
sudo dnf upgrade 
sudo yum install snapd 
sudo systemctl enable --now snapd.socket 
