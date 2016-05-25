sudo ln -sf /home/box/web/etc/nginx.conf  /etc/nginx/nginx.conf
sudo ln -sf /home/box/etc/hello.py  /etc/gunicorn.d/hello.py
sudo /etc/init.d/nginx restart
