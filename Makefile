bench:
	/home/isucon/benchmarker/bin/benchmarker -t "localhost:80" -u /home/isucon/benchmarker/userdata

restart-nginx:
	sudo systemctl reload nginx

alp:
	sudo alp --sum -r -f /var/log/nginx/access.log --aggregates='/image/*,/posts/*'

restart-mysql:
	sudo systemctl restart mysql

restart-app:
	sudo systemctl restart isu-ruby

percola:
	sudo pt-query-digest --limit 10 /var/log/mysql/slow.log

netdata:
	 bash <(curl -Ss https://my-netdata.io/kickstart-static64.sh)
