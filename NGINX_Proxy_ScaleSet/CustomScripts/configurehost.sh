# Custom Script for Linux
apt-get update
apt-get install -y nginx
apt-get install -y gettext
curl https://raw.githubusercontent.com/mahedley/NGINX-Proxy-Scaleset/master/NGINX_Proxy_ScaleSet/CustomScripts/nginx.config > /etc/nginx/conf.d/nginx_config.conf
curl https://raw.githubusercontent.com/JasonGiedymin/nginx-init-ubuntu/master/nginx > /etc/init.d/nginx
chmod +x /etc/init.d/nginx
update-rc.d /usr/sbin/update-rc.d -f defaults
sudo /etc/init.d/nginx start



