# SA-MP Docker server
```bash
cp mysql/.env.example mysql/.env
cp samp-server/server.cfg.example samp-server/server.cfg

wget http://files.sa-mp.com/samp037svr_R2-1.tar.gz
tar -xzf samp037svr_R2-1.tar.gz
cp -R samp03/* samp-server/
rm -rf samp03/ samp037svr_R2-1.tar.gz

docker-compose build
docker-compose up -d
```
