import 'package:assessment_app/screens/dashboard/dashboard_screen.dart';
import 'package:flutter/material.dart';
import 'package:scrips_core/di/dependency_injection.dart';
import 'package:scrips_core/widgets/general/field_and_label.dart';

void main() async {
  await initCoreServiceLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DashboardScreen(),
    );
  }
}
