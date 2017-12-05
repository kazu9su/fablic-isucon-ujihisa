bench:
	/home/isucon/benchmarker/bin/benchmarker -t "localhost:80" -u ${PWD}/userdata

restart-nginx:
	sudo systemctl reload nginx

alp:
	sudo alp --sum -r -f /var/log/nginx/access.log --aggregates='/image/*,/posts/*'
