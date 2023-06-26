#include <stdio.h>

double pi = 3.14159265;

int main()
{
    int num1, num2, result;
    int array[100];
    char c;
    //Array initialization
    for (int i = 0; i < 100; ++i)
    {
        array[i] = 0;
    }
    
    //Get two integers from user
    printf("Enter two integers: ");
    scanf("%d %d", &num1, &num2);
    
    //Add two numbers
    result = num1 + num2;
    printf("\nSum of the two integers is: %d\n", result);
    
    //Find the perimeter of a circle
    double radius = 3.4;
    double perimeter = 2 * pi * radius;
    printf("The perimeter of the circle is: %.2lf\n", perimeter);
    
    //Find the ascii code of a character
    printf("Enter a character: ");
    scanf(" %c", &c);
    int ascii = (int) c;
    printf("The ASCII code for the character is: %d\n", ascii);
    
    //Check for even number
    int number = 5;
    if(number % 2 == 0){
        printf("The number is even\n");
    }
    else{
        printf("The number is odd\n");
    }
    
    //Array sorting
    int a[10], temp, asc=0;
    printf("Enter 10 integers:\n");
    for(int i=0; i<10; ++i){
        scanf("%d", &a[i]);
    }
    for (int i=1; i<10; ++i){
        temp = a[i];
        int j = i - 1;
 
        // Compare the numbers
        while (j >= 0 && temp < a[j]){
            a[j + 1] = a[j];
            --j;
        }
 
        // Insert the number at the correct position
        a[j + 1] = temp;
    }
    printf("\nArray in Ascending Order:\n");
    for (int i=0; i<10; ++i){
        printf("%d\t", a[i]);
    }
    printf("\n");
    
    //Calculate the average of 5 numbers
    int numb[5];
    double avg;
    printf("\nEnter 5 numbers: ");
    for (int i=0; i<5; ++i){
        scanf("%d", &numb[i]);
    }
    for (int i=0; i<5; ++i){
        avg += numb[i];
    }
    avg = avg/5;
    printf("The average of the numbers is: %.2lf\n", avg);
    
    //Calculate factorial
    int factorial; 
    int num = 5;
    int n;
    factorial = 1;
    for(n=num; n>=1; n--)
    {
        factorial = factorial * n;
    }
    printf("Factorial of %d is: %d\n", num, factorial);
    
    //Check if a number is prime
    int number;
    int flag = 0;
    printf("\nEnter a number: ");
    scanf("%d", &number);
    for(int i=2;i<=(number/2);i++)
    {
        if(number%i==0)
        {
            flag=1;
            break;
        }
    }
    if (flag==0){
        printf("\nIt is a prime number!\n");
    }
    else{
        printf("\nIt is not a prime number!\n");
    }
    
    //Calculate the area of a triangle
    int sideA, sideB, sideC;
    printf("\nEnter the three sides of a triangle: ");
    scanf("%d %d %d", &sideA, &sideB, &sideC);
    float s = (float)(sideA + sideB + sideC) / 2;
    float area = sqrt(s*(s-sideA)*(s-sideB)*(s-sideC));
    printf("Area of the triangle is: %.2f\n", area);
    
    //Creating a pattern using loop
    int rows;
    printf("\nEnter the number of rows: ");
    scanf("%d", &rows);
    for (int i=1; i<=rows; ++i)
    {
        for (int j=1; j<=i; ++j)
        {
            printf("* ");
        }
        printf("\n");
    }
    
    //Calculate the power of a number
    int base, exponent;
    long long power = 1;
    printf("\nEnter base and exponent: ");
    scanf("%d %d", &base, &exponent);
    while (exponent != 0)
    {
        power *= base;
        --exponent;
    }
    printf("Answer = %lld\n", power);

    //Swap two numbers without using a temporary variable
    int first, second;
    printf("\nEnter two numbers: ");
    scanf("%d %d", &first, &second);
    first = first + second;
    second = first - second;
    first = first - second;
    printf("\nAfter swapping, first number is %d \nand second number is %d\n", first, second);

    //Check if a number is even or odd
    int num;
    printf("\nEnter a number: ");
    scanf("%d", &num);
    if(num % 2 == 0)
    {
        printf("\nIt is an even number\n");
    }
    else 
    {
        printf("\nIt is an odd number\n");
    }
    
    //Display the Fibonacci series upto n terms
    int n = 10;
    int a1 = 0;
    int a2 = 1;
    int next Term;
    printf("\nFibonacci Series: %d, %d, ", a1, a2);
    for (int i = 3; i <= n; ++i)
    {
        nextTerm = a1 + a2;
        printf("%d, ", nextTerm);
        a1 = a2;
        a2 = nextTerm;
    }
    
    //Convert decimal to binary
    int decimal;
    int binary[100];
    int remainder;
    int i=1, j;
    char choice;
    printf("\nEnter a decimal number: ");
    scanf("%d", &decimal);
    while (decimal!=0)
    {
        binary[i++]= decimal % 2;
        decimal = decimal / 2;
    }
    printf("\nBinary number is: ");
    for (j = i -1 ; j > 0; j--)
    {
        printf("%d",binary[j]);
    }
    printf("\n");
    
    //Reverse a string
    char string[100];
    int i, j=0;
    char temp;
    printf("\nEnter a string: ");
    scanf("%s", string);
    i=0;
    j = strlen(string) - 1;
    while (i < j) {
        temp = string[i];
        string[i] = string[j];
        string[j] = temp;
        i++;
        j--;
    }
    printf("\nReverse string: %s\n", string);
    
    //Check if a number is a perfect square
    int n;
    int sqr;
    int flag = 0;
    printf("\nEnter a number: ");
    scanf("%d", &n);
    for (int i=1; i<=n/2; i++)
    {
        if(i*i == n)
        {
            flag = 1;
            sqr = i;
            break;
        }
    }
    if (flag == 1)
        printf("\n%d is a perfect square and its square root is %d\n", n, sqr);
    else
        printf("\n%d is not a perfect square\n", n);


    //Check whether a character is an alphabet or not
    char ch;
    printf("\nEnter a character: ");
    scanf(" %c", &ch);
    if((ch >= 'a' && ch <= 'z') || (ch >= 'A' && ch <= 'Z')){
        printf("\nIt is an alphabet!\n");
    }
    else{
        printf("\nIt is not an alphabet!\n");
    }    
    
    //Calculate the product of two integer numbers
    int a, b, product;
    printf("\nEnter two integer numbers: ");
    scanf("%d %d", &a, &b);
    product = a * b;
    printf("\nProduct of the two integers is: %d\n", product);
    
    //Print Pascal's Triangle
    int n;
    int coeff = 1;
    printf("\nEnter number of rows: ");
    scanf("%d", &n);
    for (int i = 0; i < n; i++)
    {
        for (int k = 0; k <= i; k++)
        {
            if (k == 0 || i == 0)
            {
                coeff = 1;
            }
            else
            {
               coeff = coeff * (i - k + 1) / k;
            }
            printf("%d ", coeff);
        }
        printf("\n");
    }
    
    //Find the greatest common divisor
    int num1, num2, gcd;
    printf("\nEnter two numbers to find GCD: ");
    scanf("%d %d", &num1, &num2);
    for(int i=1; i <= num1 && i <= num2; ++i){
        if(num1%i==0 && num2%i==0){
            gcd = i;
        }
    }
    printf("\nGCD of %d and %d is: %d\n", num1, num2, gcd);
    
    //Find the least common multiple
    int a, b, lcm;
    printf("\nEnter two numbers to find LCM: ");
    scanf("%d %d", &a, &b);
    lcm = (a > b) ? a : b;
    while(1){
        if( lcm%a==0 && lcm%b==0 ){
            printf("\nThe LCM of %d and %d is: %d\n", a, b, lcm);
            break;
        }
        ++lcm;
    }
    
    //Find the circumference of a circle
    double radius;
    float circumference;
    printf("\nEnter the radius of the circle: ");
    scanf("%lf", &radius);
    circumference = 2 * pi * radius;
    printf("\nCircumference of the circle is: %.2f\n", circumference);
    
    //Calculate the sum of digits of a number
    int num, rem, sum = 0;
    printf("\nEnter a number: ");
    scanf("%d", &num);
    while(num > 0)
    {
        rem = num % 10;
        sum += rem;
        num /= 10;
    }
    printf("\nSum of the digits is: %d\n", sum);

    return 0;
}