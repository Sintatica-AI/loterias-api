eval $(grep -v '^#' /home/ubuntu/workspace/loterias-api/.env | sed 's/^/export /')
cd /home/ubuntu/workspace/loterias-api
/home/ubuntu/workspace/loterias-api/mvnw spring-boot:run