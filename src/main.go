package main

import (
	"fmt"
	"os"
	"github.com/go-rod/rod"
)

func main() {

	if len(os.Args) < 1 {
		fmt.Println("meow")
		return
	}
	query	:= os.Args[1]

	page := rod.New().NoDefaultDevice().MustConnect().MustPage("https://lcorp.ulif.org.ua/dictua/")
	textform := page.MustElement("#ContentPlaceHolder1_tsearch")
	textform.MustInput(query)

	page.MustElement("#ContentPlaceHolder1_search").MustClick()
	for page.MustElementR("tr", query) == nil {
	}
	fmt.Println(page.MustElement("#ContentPlaceHolder1_article").HTML())
}
