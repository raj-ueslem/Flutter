import 'package:ex_studies_showcase/pages/_export_pages.dart';
import 'package:flutter/material.dart';
import 'package:showcaseview/showcaseview.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: ShowCaseWidget(
        builder: Builder(
          builder: (context) => const MyHomePage(title: "Flutter ShowCaseView"),
        ),
        onFinish: () {},
      ),
    );
  }
}
