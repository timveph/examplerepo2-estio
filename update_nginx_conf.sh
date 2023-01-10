cat <<EOF > /etc/nginx/nginx.conf
events{}
http {
    server {
      listen 80;
      server_name 3.8.119.98/;
      location / {
          proxy_pass http://3.8.119.98/:5000;
      }
    }
}
EOF