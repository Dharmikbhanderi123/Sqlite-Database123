// ignore_for_file: avoid_print
import 'package:flutter/material.dart';
import 'package:sqlite_database/sqldatabase.dart/database.dart';
import 'package:sqlite_database/sqldatabase.dart/model.dart';

class MyApp1 extends StatelessWidget {
  const MyApp1({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: homepage(),
    );
  }
}

class homepage extends StatefulWidget {
  const homepage({super.key});
  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  List<Class> idc = [
    Class(id: 1, classno: 'A'),
    Class(id: 2, classno: 'B'),
    Class(id: 3, classno: 'C'),
  ];

  List<Student> ids = [
    Student(id: 1, classid: 1, mobilenumber: '9634567890', name: 'rohit'),
    Student(id: 2, classid: 1, mobilenumber: '9434567890', name: 'rahul'),
    Student(id: 3, classid: 2, mobilenumber: '9638527456', name: 'harsh'),
    Student(id: 4, classid: 3, mobilenumber: '8965478524', name: 'bhavin'),
    Student(id: 5, classid: 2, mobilenumber: '9963528869', name: 'savan'),
    Student(id: 6, classid: 1, mobilenumber: '9633699630', name: 'dhoni'),
    Student(id: 7, classid: 3, mobilenumber: '9096398452', name: 'abhishek'),
    Student(id: 8, classid: 3, mobilenumber: '9756874522', name: 'kohli'),
    Student(id: 9, classid: 1, mobilenumber: '9696968754', name: 'surya'),
    Student(id: 10, classid: 2, mobilenumber: '9612369978', name: 'pant'),
    Student(id: 11, classid: 2, mobilenumber: '9834566994', name: 'dinesh'),
    Student(id: 12, classid: 1, mobilenumber: '9736997894', name: 'axar'),
    Student(id: 13, classid: 3, mobilenumber: '9774369994', name: 'harshal'),
    Student(id: 14, classid: 2, mobilenumber: '9773699890', name: 'hardik'),
    Student(id: 15, classid: 3, mobilenumber: '9734563699', name: 'jadeja'),
    Student(id: 16, classid: 2, mobilenumber: '9884567890', name: 'shami'),
    Student(id: 17, classid: 1, mobilenumber: '9984563699', name: 'bhuvi'),
    Student(id: 18, classid: 3, mobilenumber: '9634567890', name: 'chahal'),
    Student(id: 19, classid: 3, mobilenumber: '9934536991', name: 'deepak'),
    Student(id: 20, classid: 2, mobilenumber: '9834567485', name: 'ashwin'),
  ];
  late students db;

  // @override
  // void initState() {
  //   super.initState();
  //   db = students();
  //   getdata2();
  //   //studentgetdata();
  // }
  // void getdata2() async {
  //   ids = await db.studentgetdata();
  //   idc = await db.classgetdata();
  // }
//   void main() {
//   // List<Student> combined = ids
//   //     .map((Studentss) => Studentss
//   //         ..classid =
//   //           idc.firstWhere((classs) => classs.id == Studentss.classid, orElse: () => null)?.classsText ?? 'Missing answer')
//   //     .toList();
//   // combined.forEach((question) => print(question));
//   //List<Student> combined = ids.map((question) => question.classid = idc.firstWhere((answer) => answer.id == question.classid, orElse: () => null)?.classno ?? '').toList();
// }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.cyan,
        title: const Text('Sqlite Demo'),
      ),
      body: ListView.builder(
        itemCount: idc.length,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: [
              Card(
                child: Column(children: [
                  Text(
                    "Class ${idc[index].classno}",
                    // ignore: prefer_const_constructors
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Colors.blueAccent),
                  ),
                  SizedBox(
                    height: 175,
                    child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: ids
                            .where((i) => i.classid == idc[index].id)
                            .toList()
                            .length,
                        itemBuilder: (BuildContext context, int sindex) {
                          var obj = ids
                              .where((i) => i.classid == idc[index].id)
                              .toList();
                          // print(
                          //     'count per section ==>>>> ${ids.where((i) => i.classid == idc[index].id).toList().length}');
                          // print(
                          //     'count per section ==>>>> ${ids.where((i) => i.classid == idc[index].id).toList()[sindex].name}');
                          return Column(
                            children: [
                              Text(
                                //  'Name : ${ids.where((i) => i.classid == idc[index].id).toList()[sindex].name}',
                                'Namess : ${obj[sindex].name}',

                                style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.green),
                              ),
                              Text(
                                //'Mobile no : ${ids.where((i) => i.classid == idc[index].id).toList()[sindex].mobilenumber}',
                                'Mobile No : ${obj[sindex].mobilenumber}',
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black87),
                              ),
                            ],
                          );
                        }),
                  ),
                ]),
              ),
            ],
          );
        },
      ),
    );
  }
}
