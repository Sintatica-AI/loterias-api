run:
	./mvnw spring-boot:run;

test:
	curl http://localhost:8084/api/megasena/latest | json_pp;

serv-link:
	sudo ln /home/ubuntu/workspace/loterias-api/loterias.service /etc/systemd/system/loterias.service
	ls -la /etc/systemd/system | grep loterias
	sudo systemctl daemon-reload

serv-run:
	sudo systemctl daemon-reload
	sudo systemctl start loterias.service
	sudo systemctl status loterias.service

serv-enable:
	sudo systemctl enable loterias.service

serv-logs:
	journalctl -u loterias.service --follow

serv-stop:
	sudo systemctl stop loterias.service

serv-logs-size:
	sudo journalctl -u loterias.service --vacuum-size=100M

site:
	sudo cp loterias.sintatica.tech /etc/nginx/sites-available/ 
	sudo nginx -t

nginx-link:
	sudo ln -s /etc/nginx/sites-available/loterias.sintatica.tech /etc/nginx/sites-enabled/ | true
	sudo systemctl reload nginx
	sudo systemctl status nginx