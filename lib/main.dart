import 'package:flutter/material.dart';
import 'screens/home_page.dart';
import 'screens/project_detail_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'OpenSans',
        appBarTheme: const AppBarTheme(
          color: Colors.purple,
          shadowColor: Colors.purpleAccent,
          centerTitle: true,
        ),
        textTheme: const TextTheme(
          bodyText1: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      home: HomePageScreen(),
      routes: {
        ProjectDetailScreen.routeName: (ctx) => const ProjectDetailScreen(),
      },
    );
  }
}
