public_ip=$(curl http://checkip.amazonaws.com)

cat <<EOF > /etc/nginx/nginx.conf
events{}
http {
    server {
      listen 80;
      server_name $public_ip;
      location / {
          proxy_pass http://3.8.119.98/:5000;
      }
    }
}
EOF