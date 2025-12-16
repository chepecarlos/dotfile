---
- nombre: levantar
  titulo: levantar
  key: 1
  accion: escribir
  opciones:
    texto: docker compose up -d
- nombre: ls
  titulo: ls
  key: 3
  accion: escribir
  opciones:
    texto: docker ps -a
- nombre: ls Red
  titulo: ls\nRed
  key: 4
  accion: escribir
  opciones:
    texto: docker network ls
- nombre: logs
  titulo: logs
  key: 2
  accion: escribir
  opciones:
    texto: docker logs 
- nombre: stop
  titulo: stop
  key: 18
  accion: escribir
  opciones:
    texto; docker stop
- nombre: rm
  titulo: rm
  key: 19
  accion: escribir
  opciones:
    texto: docker rm
---