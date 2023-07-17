package main

import "fmt"

func main() {
	// Print out a Welcome message
	fmt.Println("Welcome to 'From the Ground Up!")

	// Create a variable called num1
	var num1 int

	// Ask the user to input a number
	fmt.Print("Please enter a number: ")
	fmt.Scan(&num1)

	// Create a variable called num2
	var num2 int

	// Ask the user to input another number
	fmt.Print("Please enter another number: ")
	fmt.Scan(&num2)

	// Calculate the sum of the two numbers
	sum := num1 + num2

	// Print out the sum
	fmt.Println("The sum of the two numbers is ", sum)

	// Create a boolean variable
	var isTrue bool

	// Ask the user to input a boolean
	fmt.Print("Please enter a boolean (true or false): ")
	fmt.Scan(&isTrue)

	// Print out the boolean
	fmt.Println("The boolean is: ", isTrue)

	// Create a string variable
	var name string

	// Ask the user to input a string
	fmt.Print("Please enter your name: ")
	fmt.Scan(&name)

	// Print out a greeting message
	fmt.Println("Hello there, ", name)

	// Create an array of numbers
	var arr = []int{1, 2, 3, 4, 5}

	// Loop over the array and print out each number
	for _, num := range arr {
		fmt.Println(num)
	}

	// Create a map
	m := map[string]int{"one": 1, "two": 2, "three": 3}

	// Loop over the map and print out each key-value pair
	for key, val := range m {
		fmt.Printf("\nKey is: %v, Value is: %v\n", key, val)
	}

	// Create a function to calculate the area of a circle
	func calculateCircleArea(r float64) float64 {
		// Calculate the area
		area := 3.14 * r * r
		return area
	}

	// Call the function and print out the area
	area := calculateCircleArea(10.5)
	fmt.Println("The area of the circle is: ", area)

	// Create a struct
	type person struct {
		name string
		age  int
	}

	// Create an instance of the struct
	p := person{
		name: "John Doe",
		age:  20,
	}

	// Print out the values
	fmt.Printf("Name: %v, Age: %v\n", p.name, p.age)

	// Create a new slice
	numSlice := []int{2, 4, 6, 8}

	// Iterate over the slice
	for _, num := range numSlice {
		// Print out the value of the slice
		fmt.Println(num)
	}

	// Create a pointer to an integer
	var x int = 10
	// Create a pointer to pointer to an integer
	var p2 *int = &x
	// Create a pointer to pointer of pointer to an integer
	var p3 **int = &p2

	// Print out the value of the pointer
	fmt.Println(**p3)

	// Create a channel
	ch := make(chan int)

	// Send a value to the channel
	go func() {
		// Send a value to the channel
		ch <- 123
	}()

	// Receive a value from the channel
	val := <-ch

	// Print out the value
	fmt.Println("Received value from channel:", val)

	// Create a map
	myMap := make(map[string]int)

	// Add key-value pairs to the map
	myMap["key1"] = 1
	myMap["key2"] = 2
	myMap["key3"] = 3

	// Iterate over the map
	for key, val := range myMap {
		fmt.Printf("Key: %v, Value: %v\n", key, val)
	}

	// Create a defer statement
	defer fmt.Println("Goodbye!")

	// Print out a message
	fmt.Println("Thank you for using 'From the Ground Up'!")

	// Create an anonymous function
	func() {
		fmt.Println("This is an anonymous function.")
	}()

	// Create a switch statement
	switch {
	case num1 > num2:
		fmt.Println("Num1 is greater than num2")
	case num2 > num1:
		fmt.Println("Num2 is greater than num1")
	default:
		fmt.Println("The numbers are equal")
	}

	// Create a loop
	for i := 0; i < 10; i++ {
		fmt.Println("Loop iteration: ", i)
	}

	// Create an interface
	type square interface {
		area() float64
	}

	// Create a type for a square
	type mySquare struct {
		side float64
	}

	// Create a method to calculate the area of a square
	func (s mySquare) area() float64 {
		return s.side * s.side
	}

	// Create an instance of the square type
	s := mySquare{side: 5.5}

	// Print out the area of the square
	fmt.Println("Area of the square is: ", s.area())
}