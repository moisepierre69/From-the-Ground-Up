// 1. Variable Declaration

var name: String = "John"
var age: Int = 40
var height: Double = 6.2

// 2. Creating Classes

class Human(firstName: String, lastName: String) {
    var firstName: String
    var lastName: String

    init {
        this.firstName = firstName
        this.lastName = lastName
    }
}

// 3. Function Declaration

fun welcome(human: Human): String {
    return "Welcome ${human.firstName} ${human.lastName}!"
}

// 4. Accessing Properties

fun getName(human: Human): String {
    return human.firstName
}

// 5. Constructors

class Car(make: String, model: String, year: Int) {
    var make: String
    var model: String
    var year: Int

    init {
        this.make = make
        this.model = model
        this.year = year
    }
}

// 6. Parameters and Arguments

fun createCar(make: String, model: String, year: Int): Car {
    return Car(make, model, year)
}

// 7. Inheritance

open class Vehicle(name: String) {
    var name: String

    init {
        this.name = name
    }

}

class Truck(name: String, color: String): Vehicle(name) {
    var color: String

    init {
        this.color = color
    }

}

// 8. Interfaces

interface Flyable {
    fun fly()
}

class Plane(name: String): Vehicle(name), Flyable {
    override fun fly() {
        println("Plane is flying")
    }

}

// 9. Loops

fun loopThroughCars(cars: Array<Car>) {
    for (car in cars) {
        println(car.make + " " + car.model + " (" + car.year + ")")
    }
}

// 10. Control Flow

fun checkAge(age: Int) {
    when {
        age < 18 -> println("You are too young!")
        age in 18..35 -> println("Welcome to the party!")
        age > 35 -> println("You are too old!")
    }
}

// 11. Exceptions

fun getUser(id: Int): String {
    if (id !in 1..4) {
        throw IllegalArgumentException("Invalid user ID")
    }
    return "John"
}

// 12. Lambdas

val createCar: (String, String, Int) -> Car = { make, model, year -> Car(make, model, year) }

// 13. Collections

fun printCars(cars: List<Car>) {
    for (car in cars) {
        println(car.make + " " + car.model + " (" + car.year + ")")
    }
}

// 14. Generics

class Box<T>(var item: T) {
    fun getItem(): T {
        return item
    }
}

// 15. Null Safety

class Person(val name: String, val age: Int)

fun getPerson(name: String): Person? {
    if (name == "John") {
        return Person(name, 23)
    } else {
        return null
    }
}

// 16. Extensions

fun String.addSuffix(suffix: String): String {
    return this + suffix
}

// 17. Infix Functions

class Math {
    infix fun add(a: Int, b: Int): Int {
        return a + b
    }
}

// 18. Data Classes

data class Student(val name: String, val age: Int)

// 19. Sealed Classes

sealed class Animal {
    class Dog: Animal()
    class Cat: Animal()
}

// 20. Coroutines

suspend fun getData(): String {
    return "data"
}