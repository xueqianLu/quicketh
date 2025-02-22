init:
	@./bin/geth --datadir node/data init genesis.json


start:
	@./start.sh

stop:
	@./stop.sh


clean:
	@rm -rf ./node/data/geth
