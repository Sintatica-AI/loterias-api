run:
	./mvnw spring-boot:run;

test:
	curl http://localhost:8084/api/megasena/latest | json_pp;

serv-link:
	sudo systemctl daemon-reload
	cd /etc/systemd/system
	sudo ln /home/ubuntu/workspace/loterias-api/loterias.service

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