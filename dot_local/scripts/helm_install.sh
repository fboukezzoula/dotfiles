dnf install https://dl.fedoraproject.org/pub/epel/epel-release-latest-9.noarch.rpm 
dnf upgrade 
yum install snapd 
systemctl enable --now snapd.socket 
ln -s /var/lib/snapd/snap /snap