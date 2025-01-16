# Используем официальный образ Nginx
FROM nginx:latest

# Устанавливаем рабочую директорию внутри контейнера
WORKDIR /usr/share/nginx/html

# Копируем файлы проекта в контейнер
COPY index.html .
COPY css/ css/
COPY js/ js/
COPY libs/ libs/
COPY fonts/ fonts/
COPY img/ img/

# Указываем, что контейнер использует порт 80 для доступа
EXPOSE 80

# Запускаем Nginx
CMD ["nginx", "-g", "daemon off;"]
