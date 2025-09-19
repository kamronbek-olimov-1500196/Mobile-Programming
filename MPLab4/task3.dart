import 'dart:vmservice_io';

class Animal{
  void makeSound(){
    print('generic animal sound');
  }
}

class Dog extends Animal{
  @override
  void makeSound(){
    print('Woof!');
  }
}

class Cat extends Animal{
  @override
  void makeSound(){
    print('Meow!');
  }
}
class shape{
  String color;
  shape(this.color);
}
class circle extends shape{
  double radius;

  circle(String color, this.radius) : super(color);
  void display(){
    print('Cirlce -> Color: $color, Radius: $radius');
  }
}

class square extends shape{
  double sideLength;

  square(String color, this.sideLength) : super(color);

  void display(){
    print('Square -> Color: $color, Side lenght: $sideLength');
  }
}

class Employee{
  String name;
  double salary;

  Employee(this.name, this.salary);

  double calculateSalary(){
    return salary;
  }

  void display(){
    print('Employee: $name, Salary: \$${calculateSalary().toStringAsFixed(2)}');
  }
}

class Manager extends Employee{
  double bonus;
  Manager(String name, double salary, this.bonus) : super(name, salary);

  @override
  double calculateSalary(){
    return salary + bonus;
  }
  @override
  void display(){
    print('Manager: $name, Salary: \$${calculateSalary().toStringAsFixed(2)}');
  }
}
class LibraryItem {
  String title;
  int id;

  LibraryItem(this.title, this.id);

  String getDetails() {
    return "ID: $id, Title: $title";
  }
}

class Book extends LibraryItem {
  String author;

  Book(String title, int id, this.author) : super(title, id);

  @override
  String getDetails() {
    return "Book - ID: $id, Title: $title, Author: $author";
  }
}

class DVD extends LibraryItem {
  String director;

  DVD(String title, int id, this.director) : super(title, id);

  @override
  String getDetails() {
    return "DVD - ID: $id, Title: $title, Director: $director";
  }
}


void main(){
  var book = Book("Magical Throne of Arcana", 1623, "Cuttlefish");
  var dvd = DVD("Inception", 202, "Christopher Nolan");

  print(book.getDetails());
  print(dvd.getDetails());




  //var employee = Employee("Morgan", 8000);
  //var manager = Manager("Benson", 12000, 3000);

  //employee.display();
  //manager.display();






  //var Circle = circle('Red', 4.0);
//var Square = square('Yellow', 5.0);

//Circle.display();
//Square.display();



  //var dog = Dog();
  //var cat = Cat();
  //dog.makeSound();
  //cat.makeSound();
}