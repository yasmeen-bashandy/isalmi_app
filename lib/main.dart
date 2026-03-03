import 'package:flutter/material.dart';
import 'package:islami_app/ui/home/screen/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Isalmi',
      debugShowCheckedModeBanner: false,
      // ======= navigation named =======
      routes: {HomeScreen.routeName: (_) => HomeScreen()},
      initialRoute: HomeScreen.routeName,
    );
  }
}
