import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ocrtextz/navigation/navbar.dart';
import 'package:ocrtextz/screen/home.dart';
import 'package:ocrtextz/theme/theme.dart';

Future main() async {
  await dotenv.load(fileName: ".env");
  runApp(
    ProviderScope(child: const MainApp(), retry: (retryCount, error) => null),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Navbar(),
      theme: MyThemes().myTheme,
    );
  }
}
