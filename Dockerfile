# Используем базовый образ Ubuntu 20.04
FROM ubuntu:20.04

# Устанавливаем зависимости
RUN apt-get update && apt-get install -y \
    lib32stdc++6 \
    && rm -rf /var/lib/apt/lists/*

# Создаем каталог для сервера SA-MP
RUN mkdir /samp-server
# Копируем SA-MP сервер внутрь контейнера
#COPY samp-server/ /samp-server/
# Устанавливаем рабочую директорию
WORKDIR /samp-server

# Открываем порты
EXPOSE 7777/udp
