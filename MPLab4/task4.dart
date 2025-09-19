mixin Flyer {
  void fly() {
    print("Taking off!");
  }
}

class Bird with Flyer {
  String species;
  Bird(this.species);
}

class Plane with Flyer {
  String model;
  Plane(this.model);
}

mixin Logger {
  void log(String message) {
    print("[LOG] $message");
  }
}

class DataService with Logger {
  void fetchData() {
    log("Fetching data");
  }
}

mixin Validator {
  bool isEmailValid(String email) {
    return email.contains('@') && email.contains('.');
  }

  bool isPasswordStrong(String password) {
    return password.length > 8;
  }
}

class UserSignup with Validator {
  String email;
  String password;

  UserSignup(this.email, this.password);

  void validate() {
    print("Email valid: ${isEmailValid(email)}");
    print("Password strong: ${isPasswordStrong(password)}");
  }
}


mixin Performer {
  void perform() {
    print("Performing on stage!");
  }
}

mixin Musician {
  void playInstrument() {
    print("Playing an instrument!");
  }
}

class Artist {
  String name;
  Artist(this.name);
}

class Dancer extends Artist with Performer {
  Dancer(String name) : super(name);
}

class Guitarist extends Artist with Performer, Musician {
  Guitarist(String name) : super(name);
}

void main() {

  var dancer = Dancer("Anna");
  var guitarist = Guitarist("John");

  dancer.perform();
  guitarist.perform();
  guitarist.playInstrument();




  //  var user1 = UserSignup("test@example.com", "mypassword123");
//  var user2 = UserSignup("invalidEmail", "12345");

//  user1.validate();
//  user2.validate();






  //  var service = DataService();
//  service.fetchData();




 // var bird = Bird("Eagle");
  //var plane = Plane("Boeing 747");

  //bird.fly();
  //plane.fly();
}
