import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:ocrtextz/screen/home.dart';
import 'package:ocrtextz/theme/theme.dart';

Future main() async {
  await dotenv.load(fileName: ".env");
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
      theme: MyThemes().myTheme,
    );
  }
}
