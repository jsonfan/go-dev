package main

import "github.com/go-martini/martini"

func main() {
	m := martini.Classic()
	m.Get("/", index)

	m.Get("/hello/**", hello)

	m.Run()
}

func index() string {
	return "yo broskido"
}

func hello(params martini.Params) string {
	return "Hiya u " + params["_1"]
}
