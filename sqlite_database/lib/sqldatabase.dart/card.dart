// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:sqlite_database/sqldatabase.dart/model.dart';

// class studentcard extends StatelessWidget {
//   studentcard(
//       {Key? key,
//       required this.data,
//       required this.index})
//       : super(key: key);
//   final Student data;
//   final int index;

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       child: ListTile(
//         leading: CircleAvatar(
//           child: IconButton(
//               onPressed: () {
//               },
//               icon: const Icon(Icons.edit)),
//         ),
//         title: Text(data.name),
//         subtitle: Text(data.mobilenumber),
//         trailing: CircleAvatar(
//           backgroundColor: Colors.red,
//           child: IconButton(
//               onPressed: () {
//               },
//               icon: const Icon(
//                 Icons.delete,
//                 color: Colors.white,
//               )),
//         ),
//       ),
//     );
//   }
// }
