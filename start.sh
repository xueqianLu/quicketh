#!/bin/bash
source env.sh
./bin/geth --datadir node/data --http \
	--nodiscover \
	--miner.threads=1 \
        --http.api=eth,net,web3,admin,txpool,miner,debug \
        --http.addr=0.0.0.0 \
	--http.port=$rpcport \
        --http.corsdomain=* \
        --ws \
        --ws.api=eth,net,web3 \
        --ws.addr=0.0.0.0 \
        --ws.origins=* \
	--ws.port=$wsport\
        --authrpc.vhosts=* \
        --authrpc.addr=0.0.0.0 \
        --authrpc.port=8551 \
        --authrpc.jwtsecret=node/data/jwtsecret \
        --allow-insecure-unlock \
        --unlock=0xfEe2882b7d75FadDcebD002E7e3bEf7B19Eed14E \
        --password=password.txt \
	--mine \
	--gcmode archive \
        --syncmode=full >> d.log 2>&1 &
