up:
	@echo '************  Criando network ************'
	@echo '*'
	@echo '*'
	docker network inspect my_project >/dev/null 2>&1 || docker network create my_project
	@echo '*'
	@echo '*'
	@echo '************  Setando variaveis de ambiente ************'
	@echo '*'
	@echo '*'
	cp .env.example .env

	@echo '************  Subindo DB ************'
	@echo '*'
	@echo '*'
	docker-compose up -d --build

	@echo '*'
	@echo '*'
	@echo '************  Stopping DBs ************'
	@echo '*'
	@echo '*'
	docker stop postgres pgadmin
	chmod -R 777 pgsql-data

	@echo '*'
	@echo '*'
	@echo '************  Libera acesso p/ todas as redes ************'
	@echo '*'
	@echo '*'
	echo "host    all             all             0.0.0.0/0               md5" >> pgsql-data/pg_hba.conf

	@echo '*'
	@echo '*'
	@echo '************  PostgreSQL configurado execute "docker-compose up" para iniciar ************'