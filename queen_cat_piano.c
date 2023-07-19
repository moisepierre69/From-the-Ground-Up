#include <stdio.h>
#include <stdlib.h>

// Function prototypes
void groundUp(void);
void levelOne(void);
void levelTwo(void);
void levelThree(void);
void levelFour(void);
void levelFive(void);

// Main function
int main(void) {
	printf("This program will take you through the basics of C programming\n\n");
	printf("From the Ground Up\n\n");
	groundUp();

	return 0;
}

// groundUp function to initiate the program
void groundUp(void) {
	levelOne();
	levelTwo();
	levelThree();
	levelFour();
	levelFive();
	printf("Congratulations! You have successfully completed the program.\n");
}

// Level One: Introduction to C
void levelOne(void) {
	printf("Level One: Introduction to C\n\n");
	printf("C is a general-purpose, procedural, imperative computer programming language.\n");
	printf("It supports structured programming, lexical variable scope and recursion.\n");
	printf("C is an excellent language for introducing concepts of programming to novice programmers.\n\n");
}

// Level Two: Syntax and Variables
void levelTwo(void) {
	printf("Level Two: Syntax and Variables\n\n");
	printf("The syntax of C is relatively simple and is composed of statements.\n");
	printf("Statements are segments of code that perform some kind of action.\n");
	printf("Statements can include simple calculations or more complex functions.\n");
	printf("Variables are used to store information which can be accessed and modified throughout a program.\n\n");
}

// Level Three: Control Flow and Loops
void levelThree(void) {
	printf("Level Three: Control Flow and Loops\n\n");
	printf("The control flow of a program is determined by statements that change the direction of the program.\n");
	printf("These statements can be used to make decisions or repeat actions.\n");
	printf("Loops are a type of control statement that are able to execute a set of instructions repeatedly.\n\n");
}

// Level Four: Functions
void levelFour(void) {
	printf("Level Four: Functions\n\n");
	printf("Functions are a set of statements that are grouped together to carry out a specific task.\n");
	printf("Functions can be reused by calling them in various parts of a program.\n");
	printf("They can also be used to seperate complex tasks into easier to read chunks.\n\n");
}

// Level Five: Data Structures
void levelFive(void) {
	printf("Level Five: Data Structures\n\n");
	printf("Data structures are used to store and organize data in a program.\n");
	printf("The most common types of data structures used in C are arrays and linked lists.\n");
	printf("Arrays are collections of data stored in a single variable and linked lists are collections of data elements connected to each other.\n\n");
}