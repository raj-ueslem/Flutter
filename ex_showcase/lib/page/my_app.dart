import 'package:flutter/material.dart';
import 'package:showcaseview/showcaseview.dart';
import '_export_pages.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ex showcase',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true
      ),
      home: Scaffold(
        body: ShowCaseWidget(
          builder: Builder(builder: (context) => const MyHomePage(title: "ex. show Case")),
        ),
      ),
    );
  }
}