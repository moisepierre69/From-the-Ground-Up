//use std library for standard input and output 
use std::io;

// create a function to calculate distance
fn calculate_distance(x1: u32, y1: u32, x2: u32, y2: u32) -> u32 {
    let x_diff = (x2 as i32 - x1 as i32).abs();
    let y_diff = (y2 as i32 - y1 as i32).abs();
    (x_diff.pow(2) + y_diff.pow(2)) as u32
}

//create the main function
fn main() {

    //create variables
    let mut x1 = 0;
    let mut y1 = 0;

    let mut x2 = 0;
    let mut y2 = 0;
    
    //prompt user for input
    println!("Please enter two coordinates to calculate the distance between them");
    println!("Enter first x coordinate:");
    
    //read in the first x coordinate
    io::stdin().read_line(&mut x1).expect("Failed to read line");
    
    //convert input to a number
    let x1: u32 = match x1.trim().parse() {
        Ok(num) => num,
        Err(_) => 1,
    };
    
    //propmt user for the second x coordinate
    println!("Enter first y coordinate:");
    
    //read in the second x coordinate
    io::stdin().read_line(&mut y1).expect("Failed to read line");
    
    //convert input to a number
    let y1: u32 = match y1.trim().parse() {
        Ok(num) => num,
        Err(_) => 1,
    };
    
    //prompt user for the third x coordinate
    println!("Enter second x coordinate:");
    
    //read in the third x coordinate
    io::stdin().read_line(&mut x2).expect("Failed to read line");
    
    //convert input to a number
    let x2: u32 = match x2.trim().parse() {
        Ok(num) => num,
        Err(_) => 1,
    };
    
    //propmt user for the fourth x coordinate
    println!("Enter second y coordinate:");
    
    //read in the fourth x coordinate 
    io::stdin().read_line(&mut y2).expect("Failed to read line");
    
    //convert input to a number
    let y2: u32 = match y2.trim().parse() {
        Ok(num) => num,
        Err(_) => 1,
    };
    
    //print out distance
    let dist = calculate_distance(x1, y1, x2, y2);
    println!("The distance between the two coordinates is {}", dist);

}