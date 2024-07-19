import 'package:flutter/material.dart';
import 'package:know_our_school/View/school_info.dart';
import 'package:know_our_school/ViewModel/view_model.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'know our school',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ChangeNotifierProvider(
          create: (BuildContext context) {
            return SchoolInfoViewModelProvider();
          },
          child: SchoolInfo()),
    );
  }
}
