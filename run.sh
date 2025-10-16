until docker ps | grep -q mongo; do
    echo "Waiting for MongoDB container..."
    sleep 5
done

echo "MongoDB container is OK"

eval $(grep -v '^#' /home/ubuntu/workspace/loterias-api/.env | sed 's/^/export /')
cd /home/ubuntu/workspace/loterias-api
/home/ubuntu/workspace/loterias-api/mvnw spring-boot:run