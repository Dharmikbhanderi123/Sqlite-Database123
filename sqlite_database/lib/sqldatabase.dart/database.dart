// ignore_for_file: camel_case_types, unused_local_variable
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqlite_database/sqldatabase.dart/model.dart';

class students {
  Future<Database> initDB() async {
    String path = await getDatabasesPath();
    return openDatabase(
      join(path, 'class.db'),
      onCreate: (database, version) async {
        await database.execute("""
        CREATE TABLE Class(
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        classno TEXT NOT NULL,
        )
        """);
        await database.execute("""
        CREATE TABLE Student(
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        classid INTEGER,
        name TEXT NOT NULL,0
        mobilenumber TEXT NOT NULL,
        )
        """);
      },
      version: 2,
    );
  }

  // Future<bool> insertdata(Class) async {
  //   final Database db = await initDB();
  //   db.insert("Class", Class);
  //   return true;
  // }

  Future<List<Class>> classgetdata() async {
    final Database db = await initDB();
    final List<Map<String, Object?>> classdata = await db.query("Class");
    // final List<Map<String, Object?>> datass = await db.rawQuery(
    //     "SELECT * FROM Class a INNER JOIN Student b ON a.id=b.classid WHERE b.property_id=?");
    //final String MY_QUERY = "SELECT * FROM Class a INNER JOIN Student b ON a.id=b.classid WHERE b.property_id=?";
    //db.rawQuery(MY_QUERY, [List<Map<String, Object?>> datasss]);
    // final List<Map> datass = await db.rawQuery();
    //  print(datass);
    return classgetdata();
  }

  Future<List<Student>> studentgetdata() async {
    final Database db = await initDB();
    final List<Map<String, Object?>> studentdata = await db.query("Student");
    final List<Map<String, Object?>> datass = await db.rawQuery(
        "SELECT * FROM Class a INNER JOIN Student b ON a.id==b.classid");

    //final String MY_QUERY = "SELECT * FROM Class a INNER JOIN Student b ON a.id=b.classid WHERE b.property_id=?";
    //db.rawQuery(MY_QUERY, [List<Map<String, Object?>> datasss]);
    // final List<Map> datass = await db.rawQuery();
    print('rawquery data is {$datass}');
    print('student data is ==>>> {$studentdata}');

    return studentgetdata();
  }

  // Future<List> getdata2() async {
  //   final  Database db = await initDB();
  //   final  List<Map> names = await db.rawQuery('select Class.id, count(Student.classid) from Class left join Student using(id) group by Class.id');
  //          return ;   }

  // Future<void> update(datamodel datamodels, int id) async {
  //   final Database db = await initDB();
  //   await db
  //       .update("Class", datamodels.toMap(), where: "id =?", whereArgs: [id]);
  // }

  // Future<void> delete(int id) async {
  //   final Database db = await initDB();
  //   await db.delete("Class", where: "id = ?", whereArgs: [id]);
  // }
}
