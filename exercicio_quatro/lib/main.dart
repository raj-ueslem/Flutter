import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('App Bar'),
        ),
        body: Column(
          children: [
            Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        color: Colors.green,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        // color: Colors.red,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        // color: Colors.indigo,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        // color: Colors.amber,
                      ),
                    ),
                  ],
                ),
            ),
            Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        // color: Colors.green,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        color: Colors.red,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        // color: Colors.indigo,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        // color: Colors.amber,
                      ),
                    ),
                  ],
                ),
            ),
            Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        // color: Colors.green,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        // color: Colors.red,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        color: Colors.indigo,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        // color: Colors.amber,
                      ),
                    ),
                  ],
                ),
            ),
            Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        // color: Colors.green,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        // color: Colors.red,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        // color: Colors.indigo,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        color: Colors.amber,
                      ),
                    ),
                  ],
                ),
            ),
            Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        // color: Colors.green,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        // color: Colors.red,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        color: Colors.indigo,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        // color: Colors.amber,
                      ),
                    ),
                  ],
                ),
            ),
            Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        // color: Colors.green,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        color: Colors.red,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        // color: Colors.indigo,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        // color: Colors.amber,
                      ),
                    ),
                  ],
                ),
            ),
            Expanded(
                child:Row(
                  children: [
                    Expanded(
                      child: Container(
                        color: Colors.green,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        // color: Colors.red,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        // color: Colors.indigo,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        // color: Colors.amber,
                      ),
                    ),
                  ],
                ),
            ),
            // Expanded(child:
            //   Row(
            //     children: [
            //       Container(
            //         width: 70.0,
            //         height: 70.0,
            //         color: Colors.black,
            //       ),
            //     ],
            //   ),
            // ),
            // Expanded(child:
            //   Row(
            //     crossAxisAlignment: CrossAxisAlignment.stretch,
            //     children: [
            //       Container(
            //         width: 70.0,
            //       ),
            //       Container(
            //         width: 70.0,
            //         height: 70.0,
            //         color: Colors.black,
            //       ),
            //     ],
            //   ),
            // ),
            // Expanded(child:
            //   Row(
            //     crossAxisAlignment: CrossAxisAlignment.stretch,
            //     children: [
            //       Container(
            //         width: 140.0,
            //         height: 70.0,
            //       ),
            //       Container(
            //         width: 70.0,
            //         height: 70.0,
            //         color: Colors.black,
            //       ),
            //     ],
            //   ),
            // ),
            // Expanded(child:
            //   Row(
            //     crossAxisAlignment: CrossAxisAlignment.stretch,
            //     children: [
            //       Container(
            //         width: 210.0,
            //       ),
            //       Container(
            //         width: 70.0,
            //         height: 70.0,
            //         color: Colors.black,
            //       ),
            //     ],
            //   ),
            // ),
            // Expanded(child:
            //   Row(
            //     crossAxisAlignment: CrossAxisAlignment.stretch,
            //     children: [
            //       Container(
            //         width: 140.0,
            //         height: 70.0,
            //       ),
            //       Container(
            //         width: 70.0,
            //         height: 70.0,
            //         color: Colors.black,
            //       ),
            //     ],
            //   ),
            // ),
            // Expanded(child:
            //   Row(
            //     crossAxisAlignment: CrossAxisAlignment.stretch,
            //     children: [
            //       Container(
            //         width: 70.0,
            //         height: 70.0,
            //       ),
            //       Container(
            //         width: 70.0,
            //         height: 70.0,
            //         color: Colors.black,
            //       ),
            //     ],
            //   ),
            // ),
            // Expanded(child:
            //   Row(
            //     crossAxisAlignment: CrossAxisAlignment.stretch,
            //     children: [
            //       Container(
            //         width: 70.0,
            //         height: 70.0,
            //         color: Colors.black,
            //       ),
            //     ],
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}

