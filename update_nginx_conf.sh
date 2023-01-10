public_ip=$(curl http://checkip.amazonaws.com)

cat <<EOF > /etc/nginx/nginx.conf
events{}
http {
    server {
      listen 80;
      server_name $public_ip;
      location / {
          proxy_pass http://$public_ip/:5000;
      }
    }
}
EOF