// File: FromTheGroundUp.js 

// 1. Variable Declarations	
let greeting = "Hello world!";	
let userName = '';	
let isMorning = true;	
let numOfFruits = 0;	
let shoppingList = [];	
let today = new Date(); 

// 2. Functions	
function welcomeUser() {	
	if (isMorning) {	
		console.log("Good morning, " + userName + "!");	
	} else {	
		console.log("Good evening, " + userName + "!");	
	}	
} 

function calculateFruitOrder() {	
	for (let i = 0; i < shoppingList.length; i++) {	
		numOfFruits += shoppingList[i];	
	} 
	console.log("You have ordered " + numOfFruits + " pieces of fruit today.");
}

function printTodayDate() {	
	let dd = today.getDate();	
	let mm = today.getMonth() + 1;	
	let yyyy = today.getFullYear();		
	console.log("Today's date is: " + mm + '/' + dd + '/' + yyyy);	
}

// 3. Main Program 
userName = prompt("Please enter your name:");	
welcomeUser(); 		
shoppingList = [10, 20, 5]; 
calculateFruitOrder();	
printTodayDate();	
console.log(greeting);