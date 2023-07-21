import 'package:workout_programm/models/users/saved.dart';

import '../trainers/courses.dart';

class User {
  int id;
  String firstName;
  String lastName;
  String birthDate;
  String role;
  String gender;
  num weight;
  num height;
  String phoneNumber;
  String password;
  String createdAt;
  bool isOnline = true;
  String userName;
  String userPhoto;
  List<Saved> saved;
  List<Course> courses;

  User({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.birthDate,
    required this.role,
    required this.gender,
    required this.weight,
    required this.height,
    required this.phoneNumber,
    required this.password,
    required this.createdAt,
    required this.isOnline,
    required this.userName,
    required this.userPhoto,
    required this.saved,
    required this.courses,
  });
}
