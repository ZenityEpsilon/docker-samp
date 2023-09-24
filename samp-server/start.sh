#!/bin/bush

function stop_proc() {
    pkill samp03svr
    echo "Gracefully stopping"
  while true; do
    if [[ `ps -ax | grep -c samp03svr` -gt 0 ]] ; then
      sleep 1
    else
      exit
    fi
  done
}

#trap stop_proc INT TERM EXIT SIGINT
trap stop_proc SIGTERM

echo "Starting server"
./samp03svr &
sleep 2
tail -f -n 100 ./server_log.txt &

#read -r
while true
do
    if [[ `ps -ax | grep -v grep | grep -c samp03svr` -gt 0 ]] ; then
    sleep 1
  else
    echo "Server stopped"
    exit
  fi
done