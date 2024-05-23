@echo off

docker build --tag=juego .

pause

cls

docker run -it --network host --privileged -p 8080:80 --name Proyecto juego