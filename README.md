# quicketh
Running a single eth pow node quickly.

You can add your custom account to `genesis.json` or make a new genesis with `bin/puppeth`.

# then
use `make init` to initial the node, and `make start` to boot up the node, it will use 1 thread to process pow mining.

you can change the rpc port in `env.sh` and other param in `start.sh`.
