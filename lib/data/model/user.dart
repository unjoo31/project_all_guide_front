import 'package:intl/intl.dart';

class User {
  int id;
  String picUrl;
  String username;
  String email;
  String password;
  String region;
  DateTime age;
  String phoneNumber;

  User({
    required this.id,
    required this.picUrl,
    required this.username,
    required this.email,
    required this.password,
    required this.region,
    required this.age,
    required this.phoneNumber,
  });

  List<User> userList = [
    User(
      id: 1,
      picUrl: "profile_image_1.png",
      username: "unjoo",
      email: "unjoo@gmail.com",
      password: "1234",
      region: "부산",
      age: DateTime(2017, 9, 7),
      phoneNumber: "010-1234-5678",
    ),
    User(
      id: 2,
      picUrl: "profile_image_2.png",
      username: "ssar",
      email: "ssar@gmail.com",
      password: "1234",
      region: "부산",
      age: DateTime(2017, 9, 7),
      phoneNumber: "010-1234-5678",
    ),
    User(
      id: 3,
      picUrl: "profile_image_3.png",
      username: "cos",
      email: "cos@gmail.com",
      password: "1234",
      region: "부산",
      age: DateTime(2017, 9, 7),
      phoneNumber: "010-1234-5678",
    ),
    User(
      id: 4,
      picUrl: "profile_image_4.png",
      username: "love",
      email: "love@gmail.com",
      password: "1234",
      region: "부산",
      age: DateTime(2017, 9, 7),
      phoneNumber: "010-1234-5678",
    ),
  ];

  // 1. Dart 객체를 통신을 위한 Map 형태로 변환합니다.
  Map<String, dynamic> toJson() => {
        "id": id,
        "picUrl": picUrl,
        "username": username,
        "email": email,
        "password": password,
        "region": region,
        "age": age,
        "phoneNumber": phoneNumber
      };

  // 2. Map 형태로 받아서 Dart 객체로 변환합니다.
  User.fromJson(Map<String, dynamic> json)
      : id = json["id"],
        picUrl = json["picUrl"],
        username = json["username"],
        email = json["email"], // 3
        password = json["password"], // 3
        region = json["region"], // 3
        age = DateFormat("yyyy-mm-dd").parse(json["age"]),
        phoneNumber = json["phoneNumber"];

  @override
  String toString() {
    return 'User{id: $id, picUrl: $picUrl, username: $username, email: $email, password: $password, region: $region, age: $age, phoneNumber: $phoneNumber}';
  }
}
