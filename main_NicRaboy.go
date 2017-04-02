// https://www.youtube.com/watch?v=t96hBT53S4U

package main

import (
    "log"
    "net/http"

    "github.com/gorilla/mux"
)

type Person struct {
    ID  string `json:"id,omitempty"`
    Firstname   string `json:"firstname,omitempty"`
    Lastname    string `json:"lastname,omitempty"`
    Address *Address `json:"address,omitempty"`
}

type Address struct {
    City    string `json:"city,omitempty"`
    State   string `json:"state,omitempty"`
}

var people []Person

func GetPersonEndpoint(w http.ResponseWriter, req *http.Request) {}
func GetPeopleEndpoint(w http.ResponseWriter, req *http.Request) {}
func CreatePersonEndpoint(w http.ResponseWriter, req *http.Request) {}
func DeletePersonEndpoint(w http.ResponseWriter, req *http.Request) {}

func main() {
    router := mux.NewRouter()
    people = append(people, Person{ID: "1", Firstname: "Rey", Lastname: "Harpa", Address: &Address{City: "Reykjavik", State: "Westland"}})
    people = append(people, Person{ID: "2", Firstname: "Amber", Lastname: "Liu"})

    router.HandleFunc("/people"), GetPeopleEndpoint.Methods("GET")
    router.HandleFunc("/people/{id}"), GetPersonEndpoint.Methods("GET")
    router.HandleFunc("/people/{id}"), CreatePersonEndpoint.Methods("POST")
    router.HandleFunc("/people/{id}"), DeletePersonEndpoint.Methods("DELETE")

    log.Fatal(http.ListenAndServe(":8080", router))
}