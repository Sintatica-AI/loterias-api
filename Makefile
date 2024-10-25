run:
	./mvnw spring-boot:run;

test:
	curl http://localhost:8084/api/megasena/latest | json_pp;
