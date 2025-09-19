class Car {
  String make;
  String model;
  int year;

  Car(this.make, this.model, this.year);

  void displayInfo() {
    print('Car Information: $year $make $model');
  }
}


class Book {
  String title;
  String author;
  int numberOfPages;

  Book(this.title, this.author, this.numberOfPages);

  void displayInfo(){
    print('Book Information: $title by $author, $numberOfPages pages');
  }
}

class Student {
  String name;
  int age;
  List<double> grades;

  Student(this.name, this.age, this.grades);

  double calcAvgGrade(){
    if (grades.isEmpty){
      return 0.0;
    }
    double sum = 0;
    for ( var grade in grades){
      sum += grade;
    }
    return sum / grades.length;
  }
  void displayInfo(){
    print('Student: $name, Age: $age ');
    print('Average grade: ${calcAvgGrade()}');
  }
}

class BankAccount {
  int accNumber;
  String accHolderName;
  double balance;

  BankAccount(this.accNumber, this.accHolderName,this.balance);

  void deposit(double amount){
    if (amount <= 0){
      print('Deposit must be positive');
      return;
    }
    balance += amount;
    print("Deposited \$${amount.toStringAsFixed(2)}. New balance: \$${balance.toStringAsFixed(2)}");

  }
  void withdraw( double amount){
    if (amount <=0){
      print("Withdrawal amount must be positive");
    } else if (amount > balance){
      print('You are broke! Current balance: \$${balance.toStringAsFixed(2)}');
    } else {
      balance -= amount;
      print("Withdrew \$${amount.toStringAsFixed(2)}. New balance: \$${balance.toStringAsFixed(2)}");

    }
  }
  void displayInfo(){
    print("Account holder: $accHolderName");
    print("Account number: $accNumber");
    print("Balance: \$${balance.toStringAsFixed(2)}");

    deposit(200.0);
    deposit(-120.0);

    print("-------");

    withdraw(130.0);
    withdraw(800.0);
    withdraw(-50.0);

    print("Balance: \$${balance.toStringAsFixed(2)}");

  }
}

class Rectangle{
  double width;
  double height;

  Rectangle(this.width,this.height);
  double get area => width*height;
  double get perimeter => 2*(width+height);
  void displayInfo(){

    print('Width: $width, Height: $height');
    print('Area: $area');
    print('Perimeter: $perimeter');
  }
}



void main() {
  var myCar = Car('Toyota', 'Corolla', 2022);
  var myBook = Book('Lord of Mysteries','Cuttlefish', 1423);
  var student = Student('Klein', 24, [75.3,83.2,80.8,62.5]);
  var account = BankAccount(1593578462, 'Arthur Leywin', 651.0);
  var rect = Rectangle(20.0, 10.0);


  //rect.displayInfo();
  //account.displayInfo();
  //student.displayInfo();
  // myBook.displayInfo();
  // myCar.displayInfo();
}