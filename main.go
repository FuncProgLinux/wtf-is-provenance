package main

import (
	"log"
	"net/http"
)

func main() {
	mux := http.NewServeMux()
	mux.Handle("/", &homeHandler{})

	log.Println("Listening at http://0.0.0.0:8001")
	http.ListenAndServe(":8001", mux)
}

type homeHandler struct{}

func (h *homeHandler) ServeHTTP(w http.ResponseWriter, r *http.Request) {
	w.Write([]byte("Nyctibius Griseus"))
}
