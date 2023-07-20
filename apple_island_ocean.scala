// A Simple Program

object FromTheGroundUp {
  def main(args: Array[String]): Unit = {
    println("Starting from the ground up...")
  }

  // Define Some Variables
  var aString = "Hello World!"
  val anInt = 72
  val aDouble = 3.14
  val aBoolean = true
  val aList = List(1, 2, 3, 4, 5)
  val aMap = Map(1 -> "One", 2 -> "Two")

  // Define A Function
  def calculate(x: Int, y: Int): Int = x * y

  // Create A Class
  class Human {
    var age: Int = 0
    def doStuff(): Unit = {
      age = age + 1
      println("Age increased to " + age)
    }
  }

  // Create An Object Instance 
  var person = new Human

  // Define A Trait
  trait Talkative {
    def sayHi(): Unit = {
      println("Hi")
    }
  }

  // Add The Trait To The Class
  class HumanWithTrait extends Human with Talkative {
    override def sayHi(): Unit = {
      println("Hello")
    }
  }

  // Create An Object Instance
  var person2 = new HumanWithTrait

  // Define An Abstract Class
  abstract class Animal {
    var name: String
    def eat(): Unit
  }

  // Create A Subclass
  class Cat extends Animal {
    var name: String = "Cat"
    def eat(): Unit = {
      println("The cat eats")
    }
  }

  // Create An Object Instance
  var cat = new Cat

  // Create A Case Class
  case class Point(x: Int, y: Int)

  // Create An Object Instance
  var point = Point(1, 2)

  // Create A Type Alias
  type Name = String

  // Use The Alias
  val name: Name = "John"

  // Create An Enum
  object Colour extends Enumeration {
    type Colour = Value
    val Red, Blue, Green = Value
  }

  // Use The Enum
  val colour = Colour.Blue

  // Create An Implicit Class
  implicit class MathHelper(x: Int) {
    def squared: Int = x * x
  }

  // Use The Implicit Class
  val xSquared = 10.squared

  // Define Implicit Variables
  implicit val theName: Name = "Adam"

  // Create A Function That Takes an Implicit
  def salute(implicit name: Name): Unit = {
    println("Greetings " + name)
  }

  // Call The Function
  salute

  // Create A Partial Function
  val title: PartialFunction[Int, String] = {
    case 1 => "One"
    case 2 => "Two"
  }

  // Use The Partial Function
  println(title(2))

  // Create A Higher Order Function
  def higherOrder(f: Int => Int): Int = {
    f(3) + f(4)
  }

  // Use The Higher Order Function
  val result = higherOrder(x => x * x)

  // Create A Generic Class
  class Container[A](value: A) {
    def getValue(): A = value
  }

  // Use The Generic Class
  val container = new Container[Int](10)
  println(container.getValue())

  // Create An Anonymous Function
  val add = (x: Int, y: Int) => x + y

  // Use The Anonymous Function
  println(add(3, 4))

  // Create A collection
  val list = List(1, 2, 3, 4, 5)

  // Use The Collection
  val resultList = list.map(x => x * 2)
  println(resultList)
}