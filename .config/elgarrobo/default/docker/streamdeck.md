---
- nombre: levantar
  titulo: Compose\nlevantar
  key: 1
  accion: escribir
  opciones:
    texto: docker compose up -d
- nombre: logs
  titulo: logs
  key: 2
  accion: escribir
  opciones:
    texto: docker logs
- nombre: ls
  titulo: ls
  key: 3
  accion: escribir
  opciones:
    texto: docker ps -a
- nombre: Consumo compose
  titulo: Consumo\ncompos
  key: 14
  accion: escribir
  opciones:
    texto: docker compose top
- nombre: ls compose
  titulo: ls\ncompos
  key: 13
  accion: escribir
  opciones:
    texto: docker compose ps -a
- nombre: ls Red
  titulo: ls\nRed
  key: 4
  accion: escribir
  opciones:
    texto: docker network ls
- nombre: Compose Down
  titulo: Compose\nDown
  key: 6
  accion: escribir
  opciones:
    texto: docker compose down
- nombre: compose logs
  titulo: Compose\nlogs
  key: 8
  accion: escribir
  opciones:
    texto: docker compose logs
- nombre: Compose Down
  titulo: Compose\nReiniciar
  key: 11
  accion: escribir
  opciones:
    texto: docker compose restart
- nombre: stop
  titulo: stop
  key: 18
  accion: escribir
  opciones: 
    texto: docker stop
- nombre: stop
  titulo: stop
  key: 18
  accion: escribir
  opciones: 
    texto: docker stop
- nombre: rm
  titulo: rm
  key: 19
  accion: escribir
  opciones:
    texto: docker rm
- nombre: Reiniciar Compose
  titulo: Reiniciar\nCompose
  key: 20
  accion: escribir
  opciones:
    texto: docker-compose restart
- nombre: Entrar Servicio
  titulo: Entrar\nServicio
  key: 24
  accion: escribir
  opciones:
    texto: docker compose exec nombre_servicio sh
- nombre: Compose Down
  titulo: Compose\nApagar Eliminar
  key: 25
  accion: escribir
  opciones:
    texto: docker compose down -v
- nombre: ls volume
  titulo: ls\nvolumen
  key: 9
  accion: escribir
  opciones:
    texto: docker volume ls
- key: propiedad_folder
  imagen_opciones:
    fondo: '#0606bbff'
  titulo_opciones:
    tamanno_maximo: 40
...
