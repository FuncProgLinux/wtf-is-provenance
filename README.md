# Ejemplo de SLSA y Procedencia

Este repositorio es un complemento del artículo `wtf-is-provenance` escrito y
publicado en https://urutau-ltd.org/

Sirve únicamente como ejemplo. No recomiendo clonarlo o bifurcarlo para tus
propios proyectos.

## Uso

Utiliza el `Makefile` del repositorio para interactuar con el mismo:

- `make build`: Para construir el binario del `main.go`
- `make run`: Para ejecutar `main.go` y probarlo
- `make image`: Para construir la imagen de Docker
- `make env`: Para crear una `guix shell` con `slsa-verifier` instalado.
