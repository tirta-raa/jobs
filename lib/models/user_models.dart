part of 'models.dart';

class UserModels {
  int id;
  String email;
  String password;
  String name;
  String goal;

  UserModels({this.email, this.goal, this.id, this.name, this.password});

  UserModels.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    email = json['email'];
    password = json['password'];
    name = json['name'];
    goal = json['goal'];
  }

  // ? kode di atas artinya mengambil data dari Json dengan type strinng dynamic dengan nama json
  // ? kemudian di set dari map string = id terus dynamicnya dari json 'id'

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'email': email,
      'password': password,
      'name': name,
      'goal': goal,
    };

// ? method diatas adalah untuk mengembalikan nilai UserModels dalam bentuk json
  }
}
