import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Navigation Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFFDFBF7), // Off-white background
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF88AAEE), // Pastel blue primary
          primary: const Color(0xFF88AAEE),
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF88AAEE),
          foregroundColor: Colors.black,
          elevation: 0,
          shape: Border(bottom: BorderSide(color: Colors.black, width: 3)),
          centerTitle: true,
          iconTheme: IconThemeData(color: Colors.black, size: 30),
          titleTextStyle: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w900,
            fontSize: 24,
            letterSpacing: 1.5,
          ),
        ),
        textTheme: const TextTheme(
          bodyLarge: TextStyle(fontWeight: FontWeight.w600, color: Colors.black),
          bodyMedium: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
        ),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}
