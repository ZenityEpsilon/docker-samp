# SA-MP Docker server

Dependencies: \
[SA-MP server](https://sa-mp.com "Official SA-MP site") \
[MySQL Driver for pawn](https://github.com/pBlueG/SA-MP-MySQL "Original author repository")

```bash
wget http://files.sa-mp.com/samp037svr_R2-1.tar.gz
tar -xzf samp037svr_R2-1.tar.gz
cp -R samp03/* samp-server/
rm -rf samp03/ samp037svr_R2-1.tar.gz

cp mysql/.env.example mysql/.env
cp samp-server/server.cfg.example samp-server/server.cfg

docker-compose build
docker-compose up -d
```
