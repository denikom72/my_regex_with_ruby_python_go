package main

import (
	"fmt"
	"regexp"
	"strings"
)

func main() {
	// EmailExtractor
	text := "Contact us at user@example.com or support@domain.co.uk"
	emailPattern := regexp.MustCompile(`\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,6}\b`)
	emails := emailPattern.FindAllString(text, -1)
	fmt.Println("Emails:", emails)

	// URLExtractor
	text = "Visit our website at https://example.com and http://www.domain.co.uk"
	urlPattern := regexp.MustCompile(`(https?|ftp)://[^\s/$.?#].[^\s]*`)
	urls := urlPattern.FindAllString(text, -1)
	fmt.Println("URLs:", urls)

	// DateExtractor
	text = "Events on 2023-10-20 and 2023-11-15"
	datePattern := regexp.MustCompile(`\d{4}-\d{2}-\d{2}`)
	dates := datePattern.FindAllString(text, -1)
	fmt.Println("Dates:", dates)

	// ISBNValidator
	text = "ISBNs: 978-0451450524 and 0-451-45052-6"
	isbnPattern := regexp.MustCompile(`\b\d{1,5}-\d{1,7}-\d{1,7}-\d{1,7}-\d{1}\b`)
	isbns := isbnPattern.FindAllString(text, -1)
	fmt.Println("ISBNs:", isbns)

	// IPAddressExtractor
	text = "IP addresses: 192.168.1.1, 10.0.0.1, and 256.256.256.256"
	ipPattern := regexp.MustCompile(`\b(?:\d{1,3}\.){3}\d{1,3}\b`)
	ipAddresses := ipPattern.FindAllString(text, -1)
	fmt.Println("IP Addresses:", ipAddresses)

	// PhoneNumberExtractor
	text = "Call us at +1 (123) 456-7890 or +44 20 1234 5678"
	phonePattern := regexp.MustCompile(`\+\d{1,3} \(\d{1,5}\) \d{1,8}-\d{1,8}`)
	phoneNumbers := phonePattern.FindAllString(text, -1)
	fmt.Println("Phone Numbers:", phoneNumbers)

	// HexColorExtractor
	css := "color: #FF5733; background: #0088AA; border: 1px solid #CCCCCC;"
	hexColorPattern := regexp.MustCompile(`#(?:[A-Fa-f0-9]{3}){1,2}`)
	hexColors := hexColorPattern.FindAllString(css, -1)
	fmt.Println("Hex Colors:", hexColors)

	// FunctionParser
	code := "func add(a, b int) int {\n  return a + b\n}\nsum := add(2, 3)"
	functionPattern := regexp.MustCompile(`func (\w+)\((.*?)\)`)
	functions := functionPattern.FindAllStringSubmatch(code, -1)

	for _, function := range functions {
		functionName := function[1]
		arguments := strings.Split(function[2], ", ")
		fmt.Printf("Function Name: %s, Arguments: %s\n", functionName, strings.Join(arguments, ", "))
	}
}
