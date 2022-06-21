// // main.dart
// import 'package:flutter/material.dart';
// import 'package:hive/hive.dart';
// import 'package:hive_flutter/hive_flutter.dart';
//
// import 'homepage.dart';
//
// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//
//   await Hive.initFlutter();
//   // await Hive.deleteBoxFromDisk('shopping_box');
//   await Hive.openBox('LocalSurveyBox');
//
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Hive Flutter Local Database',
//       theme: ThemeData(
//         primarySwatch: Colors.green,
//       ),
//       home: const HomePage(),
//     );
//   }
// }
//
