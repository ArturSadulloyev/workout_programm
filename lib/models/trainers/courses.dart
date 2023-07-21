import 'package:workout_programm/models/trainers/body_parts.dart';


class Course {
  int id;
  String name;
  List<BodyParts> bodyParts;

  Course({
   required this.id,
   required this.name,
   required this.bodyParts,
  });
}
