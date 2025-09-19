import 'dart:ffi';

enum CStatus {
  pending,
  processing,
  shipped,
  delivered,
  cacelled
}

enum trafficLight {
  red,
  yellow,
  green;

  int get durationInSeconds{
    switch(this){
      case trafficLight.red:
        return 30;
      case trafficLight.yellow:
        return 4;
      case trafficLight.green:
        return 30;
    }
  }

}
void checkLight(trafficLight light){
  switch (light){
    case trafficLight.red:
      print('Stop');
    case trafficLight.yellow:
      print('Caution');
    default:
      print('Go');
  }
}

enum userRole{
  admin,
  editor,
  guest
}

class User{
  String name;
  userRole role;
  User(this.name,this.role);

  bool hasEditPermission(){
    return role == userRole.admin || role == userRole.editor;
    }
  }






  void main(){




  //for (var light in trafficLight.values){
  //print('${light.name} lihgt lasts for ${light.durationInSeconds} seconds.');}


  //var user1 = User('Sunless', userRole.admin);
  //var user2 = User('Kai', userRole.editor);
  //var user3 = User('Cassie', userRole.guest);

  //print("${user1.name} (${user1.role.name}) can edit: ${user1.hasEditPermission()}");
  //print("${user2.name} (${user2.role.name}) can edit: ${user2.hasEditPermission()}");
  //print("${user3.name} (${user3.role.name}) can edit: ${user3.hasEditPermission()}");




  //checkLight(trafficLight.red);

  // CStatus status = CStatus.shipped;
  // print('Current status: ${status.name}');
}