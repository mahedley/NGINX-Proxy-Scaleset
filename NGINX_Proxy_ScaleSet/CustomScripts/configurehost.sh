# Custom Script for Linux

apt-get install -y nginx
apt-get install -y gettext

curl https://raw.githubusercontent.com/JasonGiedymin/nginx-init-ubuntu/master/nginx > /etc/init.d/nginx
chmod +x /etc/init.d/nginx
update-rc.d /usr/sbin/update-rc.d -f defaults


