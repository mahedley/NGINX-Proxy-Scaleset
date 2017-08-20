# Custom Script for Linux
apt-get update
apt-get install -y nginx
apt-get install -y curl
curl https://raw.githubusercontent.com/mahedley/NGINX-Proxy-Scaleset/master/NGINX_Proxy_ScaleSet/CustomScripts/nginx.config > /etc/nginx/nginx.conf
curl https://raw.githubusercontent.com/mahedley/NGINX-Proxy-Scaleset/master/NGINX_Proxy_ScaleSet/CustomScripts/nginx_init> /etc/init.d/nginx
chmod +x /etc/init.d/nginx
update-rc.d -f nginx defaults
service nginx stop
service nginx start
ufw --force enable



