up:
	@echo "Running the script to create the sonar environment"
	@sh ./sonar_pre.sh
	@echo "Running docker compose up"
	@docker-compose build && docker-compose up -d

down:
	@echo "Running docker compose down"
	@docker-compose down

stop:
	@echo "Running docker compose stop"
	@docker-compose stop

start:
	@echo "Running docker compose start"
	@docker-compose start

restart:
	@echo "Running docker compose restart"
	@docker-compose restart

logs:
	@echo "Running docker compose logs"
	@docker-compose logs -f