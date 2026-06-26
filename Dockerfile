# Образ для статического сайта-визитки. Лёгкий nginx, отдаёт index.html.
FROM nginx:1.27-alpine

# Кладём статику сайта в стандартный корень nginx.
COPY index.html /usr/share/nginx/html/index.html

# СЛОМАНО НАМЕРЕННО (тест автооката): копируем несуществующий файл — build упадёт.
COPY __deploy_rollback_test_missing__ /tmp/__nope__

# nginx:alpine уже слушает 80 внутри контейнера и логирует в stdout/stderr.
EXPOSE 80
