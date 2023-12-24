import 'package:flutter/material.dart';
import 'package:ready_or_not/home.dart';
import 'package:responsive_framework/responsive_framework.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context, child) => ResponsiveBreakpoints.builder(
        child: child!,
        breakpoints: [
          const Breakpoint(start: 0, end: 500, name: MOBILE),
          const Breakpoint(start: 501, end: 1100, name: TABLET),
          const Breakpoint(start: 1101, end: double.infinity, name: DESKTOP),
        ],
      ),
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        elevatedButtonTheme: const ElevatedButtonThemeData(
          style: ButtonStyle(
            padding: MaterialStatePropertyAll(
              EdgeInsets.symmetric(vertical: 20, horizontal: 30),
            ),
          ),
        ),
        inputDecorationTheme: const InputDecorationTheme(
          contentPadding: EdgeInsets.symmetric(
            vertical: 5,
            horizontal: 12,
          ),
          hintStyle: TextStyle(
            color: Colors.black,
            fontFamily: "Poppins",
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
          errorMaxLines: 2,
        ),
        textTheme: const TextTheme(
          titleLarge: TextStyle(
            fontSize: 70,
            fontFamily: "Times New Roman",
          ),
          titleMedium: TextStyle(
            fontSize: 40,
            fontFamily: "Times New Roman",
          ),
          bodyLarge: TextStyle(
            fontSize: 20,
          ),
          bodyMedium: TextStyle(fontSize: 18),
        ),
      ),
      home: const Home(),
    );
  }
}
