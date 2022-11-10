// ignore_for_file: camel_case_types
import 'package:flutter/src/material/data_table.dart';

class Class {
  int id;
  String classno;

  Class({
    required this.id,
    required this.classno,
  });

  // factory Class.fromMap(Map<String, dynamic> json) => Class(
  //     id: json['id'],classno: json['classno'], name: json['name'], mobilenumber: json['mobilenumber']);

  // Map<String, dynamic> toMap() =>
  //     {'id': id, 'classno':classno,'name': name, 'mobilenumber': mobilenumber};

  // static List<Class> classdata() {
  //   return <Class>[
  //     Class(id: 1, classno: 'A'),
  //     Class(id: 2, classno: 'B'),
  //     Class(id: 3, classno: 'C'),
  //   ];
  // }
}

class Student {
  int? id;
  int classid;
  String name;
  String mobilenumber;
  Student({
    this.id,
    required this.classid,
    required this.name,
    required this.mobilenumber,
  });

  // factory Student.fromMap(Map<String, dynamic> json) => Student(
  //     id: json['id'],classid: json['classid'], name: json['name'], mobilenumber: json['mobilenumber']);

  // Map<String, dynamic> toMap() =>
  //     {'id': id, 'classid':classid,'name': name, 'mobilenumber': mobilenumber};

  // static List<Student> studentdata() {
  //   return <Student>[
  //     Student(id: 1, classid: 3, mobilenumber: '1234567890', name: 'rohit'),
  //     Student(id: 2, classid: 2, mobilenumber: '1234567890', name: 'rahul'),
  //     Student(id: 3, classid: 2, mobilenumber: '9638527456', name: 'harsh'),
  //     Student(id: 4, classid: 1, mobilenumber: '8965478524', name: 'bhavin'),
  //     Student(id: 5, classid: 1, mobilenumber: '9963528869', name: 'savan'),
  //     Student(id: 6, classid: 3, mobilenumber: '9633699630', name: 'dhoni'),
  //     Student(id: 7, classid: 1, mobilenumber: '9096398452', name: 'abhishek'),
  //     Student(id: 8, classid: 2, mobilenumber: '9756874522', name: 'kohli'),
  //     Student(id: 9, classid: 3, mobilenumber: '9696968754', name: 'surya'),
  //     Student(id: 10, classid: 3, mobilenumber: '9612369978', name: 'pant'),
  //     Student(id: 11, classid: 3, mobilenumber: '9834566994', name: 'dinesh'),
  //     Student(id: 12, classid: 2, mobilenumber: '9736997894', name: 'axar'),
  //     Student(id: 13, classid: 1, mobilenumber: '9774369994', name: 'harshal'),
  //     Student(id: 14, classid: 1, mobilenumber: '9773699890', name: 'hardik'),
  //     Student(id: 15, classid: 2, mobilenumber: '9734563699', name: 'jadeja'),
  //     Student(id: 16, classid: 3, mobilenumber: '9884567890', name: 'shami'),
  //     Student(id: 17, classid: 1, mobilenumber: '9984563699', name: 'bhuvi'),
  //     Student(id: 18, classid: 1, mobilenumber: '9634567890', name: 'chahal'),
  //     Student(id: 19, classid: 3, mobilenumber: '9934536991', name: 'deepak'),
  //     Student(id: 20, classid: 2, mobilenumber: '9834567485', name: 'ashwin'),
  //   ];
  // }
}



// Future<List> getdata() async {
//     final Database db = await initDB();
//     List<Map<String, Object?>> classes = await db.query("Class");
//     final List<Map<String, Object?>> students = await db.query("Student");

//     final List<Map<String, Object?>> datass = await db.rawQuery(
//         "SELECT * FROM Class a INNER JOIN Student b ON a.id=b.classid WHERE b.property_id=?");

//     //final String MY_QUERY = "SELECT * FROM Class a INNER JOIN Student b ON a.id=b.classid WHERE b.property_id=?";
//     //db.rawQuery(MY_QUERY, [List<Map<String, Object?>> datasss]);
//     // final List<Map> datass = await db.rawQuery();
//     print(classes);
//     print(students);
//     print(datass);

//     return classes;
//   }
