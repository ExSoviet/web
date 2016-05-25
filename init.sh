sudo ln -sf /home/box/web/etc/nginx.conf  /etc/nginx/nginx.conf
sudo ln -sf /home/box/etc/hello.py  /etc/gunicorn.d/hello.py
sudo /etc/init.d/nginx restart
sudo gunicorn -b 0.0.0.0:8080 --workers=1 -c hello.py hello:app -D
