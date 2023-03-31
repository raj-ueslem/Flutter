import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        title: "Exercicio seis",
        debugShowCheckedModeBanner: false,
        home: MyAppWidgets());
  }
}

class MyAppWidgets extends StatefulWidget {
  const MyAppWidgets({Key? key}) : super(key: key);

  @override
  State<MyAppWidgets> createState() => _MyAppWidgetsState();
}

class _MyAppWidgetsState extends State<MyAppWidgets> {
  @override
  Widget build(BuildContext context) {
    final _height = MediaQuery.of(context).size.height;
    final _width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text('App Bar'),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  // width: (_width * 20) / 100,
                  height: (_height * 5) / 100,
                  decoration: const BoxDecoration(
                    color: Color(0xff7c94b6),
                  ),
                  child: const Center(child: Text("BackLog")),
                ),
              ),
              Expanded(
                child: Container(
                  // width: (_width * 20) / 100,
                  height: (_height * 5) / 100,
                  decoration: const BoxDecoration(
                    color: Color(0xff7c94b6),
                  ),
                  child: const Center(child: Text("A fazer")),
                ),
              ),
              Expanded(
                child: Container(
                  // width: (_width * 20) / 100,
                  height: (_height * 5) / 100,
                  decoration: const BoxDecoration(
                    color: Color(0xff7c94b6),
                  ),
                  child: const Center(child: Text("Fazendo")),
                ),
              ),
              Expanded(
                child: Container(
                  // width: (_width * 20) / 100,
                  height: (_height * 5) / 100,
                  decoration: const BoxDecoration(
                    color: Color(0xff7c94b6),
                  ),
                  child: const Center(child: Text("Em revisão")),
                ),
              ),
              Expanded(
                child: Container(
                  // width: (_width * 20) / 100,
                  height: (_height * 5) / 100,
                  decoration: const BoxDecoration(
                    color: Color(0xff7c94b6),
                  ),
                  child: const Center(child: Text("Feito!")),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  // width: (_width * 20) / 100,
                  height: (_height * 10) / 100,
                  decoration: const BoxDecoration(
                    color: Color(0xff7c94b6),
                  ),
                  child: const Center(child: Text("História do Usuario 1!")),
                ),
              ),
              Expanded(
                child: Container(
                  // width: (_width * 20) / 100,
                  height: (_height * 10) / 100,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 1,
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        child: Container(
                          // width: (_width * 8) / 100,
                          height: (_height * 4) / 100,
                          decoration: BoxDecoration(
                            color: Colors.orange,
                            border: Border.all(width: 1),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          // width: (_width * 8) / 100,
                          height: (_height * 4) / 100,
                          decoration: BoxDecoration(
                            color: Colors.orange,
                            border: Border.all(
                              width: 1,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          // width: (_width * 8) / 100,
                          height: (_height * 4) / 100,
                          decoration: BoxDecoration(
                            color: Colors.orange,
                            border: Border.all(
                              width: 1,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  // width: (_width * 20) / 100,
                  height: (_height * 10) / 100,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 1,
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: (_width * 8) / 100,
                        height: (_height * 4) / 100,
                        decoration: BoxDecoration(
                          color: Colors.orange,
                          border: Border.all(width: 1),
                        ),
                      ),
                      Container(
                        width: (_width * 8) / 100,
                        height: (_height * 4) / 100,
                        decoration: BoxDecoration(
                          color: Colors.orange,
                          border: Border.all(
                            width: 1,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  // width: (_width * 20) / 100,
                  height: (_height * 10) / 100,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 1,
                    ),
                  ),
                  child: Expanded(
                    child: Container(
                      // width: (_width * 20) / 100,
                      height: (_height * 10) / 100,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1,
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: (_width * 8) / 100,
                            height: (_height * 4) / 100,
                            decoration: BoxDecoration(
                              color: Colors.orange,
                              border: Border.all(width: 1),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  // width: (_width * 20) / 100,
                  height: (_height * 10) / 100,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 1,
                    ),
                  ),
                  child: Expanded(
                    child: Container(
                      // width: (_width * 20) / 100,
                      height: (_height * 10) / 100,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1,
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                            child: Container(
                              // width: (_width * 8) / 100,
                              height: (_height * 4) / 100,
                              decoration: BoxDecoration(
                                color: Colors.orange,
                                border: Border.all(width: 1),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              // width: (_width * 8) / 100,
                              height: (_height * 4) / 100,
                              decoration: BoxDecoration(
                                color: Colors.orange,
                                border: Border.all(
                                  width: 1,
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              // width: (_width * 8) / 100,
                              height: (_height * 4) / 100,
                              decoration: BoxDecoration(
                                color: Colors.orange,
                                border: Border.all(
                                  width: 1,
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              // width: (_width * 8) / 100,
                              height: (_height * 4) / 100,
                              decoration: BoxDecoration(
                                color: Colors.orange,
                                border: Border.all(
                                  width: 1,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  // width: (_width * 20) / 100,
                  height: (_height * 10) / 100,
                  decoration: const BoxDecoration(
                    color: Color(0xff7c94b6),
                  ),
                  child: const Center(child: Text("História do Usuario 2!")),
                ),
              ),
              Expanded(
                child: Container(
                  // width: (_width * 20) / 100,
                  height: (_height * 10) / 100,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 1,
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: (_width * 8) / 100,
                        height: (_height * 4) / 100,
                        decoration: BoxDecoration(
                          color: Colors.orange,
                          border: Border.all(width: 1),
                        ),
                      ),
                      Container(
                        width: (_width * 8) / 100,
                        height: (_height * 4) / 100,
                        decoration: BoxDecoration(
                          color: Colors.orange,
                          border: Border.all(
                            width: 1,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  // width: (_width * 20) / 100,
                  height: (_height * 10) / 100,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 1,
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: (_width * 8) / 100,
                        height: (_height * 4) / 100,
                        decoration: BoxDecoration(
                          color: Colors.orange,
                          border: Border.all(width: 1),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  // width: (_width * 20) / 100,
                  height: (_height * 10) / 100,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 1,
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        child: Container(
                          width: (_width * 8) / 100,
                          height: (_height * 4) / 100,
                          decoration: BoxDecoration(
                            color: Colors.orange,
                            border: Border.all(width: 1),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          width: (_width * 8) / 100,
                          height: (_height * 4) / 100,
                          decoration: BoxDecoration(
                            color: Colors.orange,
                            border: Border.all(
                              width: 1,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          width: (_width * 8) / 100,
                          height: (_height * 4) / 100,
                          decoration: BoxDecoration(
                            color: Colors.orange,
                            border: Border.all(
                              width: 1,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  // width: (_width * 20) / 100,
                  height: (_height * 10) / 100,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 1,
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        child: Container(
                          width: (_width * 8) / 100,
                          height: (_height * 4) / 100,
                          decoration: BoxDecoration(
                            color: Colors.orange,
                            border: Border.all(width: 1),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          width: (_width * 8) / 100,
                          height: (_height * 4) / 100,
                          decoration: BoxDecoration(
                            color: Colors.orange,
                            border: Border.all(
                              width: 1,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          width: (_width * 8) / 100,
                          height: (_height * 4) / 100,
                          decoration: BoxDecoration(
                            color: Colors.orange,
                            border: Border.all(
                              width: 1,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  // width: (_width * 20) / 100,
                  height: (_height * 10) / 100,
                  decoration: const BoxDecoration(
                    color: Color(0xff7c94b6),
                  ),
                  child: const Center(child: Text("História do Usuario 3!")),
                ),
              ),
              Expanded(
                child: Container(
                  // width: (_width * 20) / 100,
                  height: (_height * 10) / 100,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 1,
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        child: Container(
                          width: (_width * 8) / 100,
                          height: (_height * 4) / 100,
                          decoration: BoxDecoration(
                            color: Colors.orange,
                            border: Border.all(width: 1),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          width: (_width * 8) / 100,
                          height: (_height * 4) / 100,
                          decoration: BoxDecoration(
                            color: Colors.orange,
                            border: Border.all(
                              width: 1,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          width: (_width * 8) / 100,
                          height: (_height * 4) / 100,
                          decoration: BoxDecoration(
                            color: Colors.orange,
                            border: Border.all(
                              width: 1,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          width: (_width * 8) / 100,
                          height: (_height * 4) / 100,
                          decoration: BoxDecoration(
                            color: Colors.orange,
                            border: Border.all(
                              width: 1,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  // width: (_width * 20) / 100,
                  height: (_height * 10) / 100,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 1,
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        child: Container(
                          width: (_width * 8) / 100,
                          height: (_height * 4) / 100,
                          decoration: BoxDecoration(
                            color: Colors.orange,
                            border: Border.all(width: 1),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          width: (_width * 8) / 100,
                          height: (_height * 4) / 100,
                          decoration: BoxDecoration(
                            color: Colors.orange,
                            border: Border.all(
                              width: 1,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  // width: (_width * 20) / 100,
                  height: (_height * 10) / 100,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 1,
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        child: Container(
                          width: (_width * 8) / 100,
                          height: (_height * 4) / 100,
                          decoration: BoxDecoration(
                            color: Colors.orange,
                            border: Border.all(width: 1),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          width: (_width * 8) / 100,
                          height: (_height * 4) / 100,
                          decoration: BoxDecoration(
                            color: Colors.orange,
                            border: Border.all(
                              width: 1,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          width: (_width * 8) / 100,
                          height: (_height * 4) / 100,
                          decoration: BoxDecoration(
                            color: Colors.orange,
                            border: Border.all(
                              width: 1,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          width: (_width * 8) / 100,
                          height: (_height * 4) / 100,
                          decoration: BoxDecoration(
                            color: Colors.orange,
                            border: Border.all(
                              width: 1,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  // width: (_width * 20) / 100,
                  height: (_height * 10) / 100,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 1,
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: (_width * 8) / 100,
                        height: (_height * 4) / 100,
                        decoration: BoxDecoration(
                          color: Colors.orange,
                          border: Border.all(width: 1),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  // width: (_width * 20) / 100,
                  height: (_height * 10) / 100,
                  decoration: const BoxDecoration(
                    color: Color(0xff7c94b6),
                  ),
                  child: const Center(child: Text("História do Usuario 4!")),
                ),
              ),
              Expanded(
                child: Container(
                  // width: (_width * 20) / 100,
                  height: (_height * 10) / 100,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 1,
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: (_width * 8) / 100,
                        height: (_height * 4) / 100,
                        decoration: BoxDecoration(
                          color: Colors.orange,
                          border: Border.all(width: 1),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  // width: (_width * 20) / 100,
                  height: (_height * 10) / 100,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 1,
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        child: Container(
                          width: (_width * 8) / 100,
                          height: (_height * 4) / 100,
                          decoration: BoxDecoration(
                            color: Colors.orange,
                            border: Border.all(width: 1),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          width: (_width * 8) / 100,
                          height: (_height * 4) / 100,
                          decoration: BoxDecoration(
                            color: Colors.orange,
                            border: Border.all(
                              width: 1,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          width: (_width * 8) / 100,
                          height: (_height * 4) / 100,
                          decoration: BoxDecoration(
                            color: Colors.orange,
                            border: Border.all(
                              width: 1,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          width: (_width * 8) / 100,
                          height: (_height * 4) / 100,
                          decoration: BoxDecoration(
                            color: Colors.orange,
                            border: Border.all(
                              width: 1,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  // width: (_width * 20) / 100,
                  height: (_height * 10) / 100,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 1,
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        child: Container(
                          width: (_width * 8) / 100,
                          height: (_height * 4) / 100,
                          decoration: BoxDecoration(
                            color: Colors.orange,
                            border: Border.all(width: 1),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          width: (_width * 8) / 100,
                          height: (_height * 4) / 100,
                          decoration: BoxDecoration(
                            color: Colors.orange,
                            border: Border.all(
                              width: 1,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  width: (_width * 20) / 100,
                  height: (_height * 10) / 100,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 1,
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        child: Container(
                          width: (_width * 8) / 100,
                          height: (_height * 4) / 100,
                          decoration: BoxDecoration(
                            color: Colors.orange,
                            border: Border.all(width: 1),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          width: (_width * 8) / 100,
                          height: (_height * 4) / 100,
                          decoration: BoxDecoration(
                            color: Colors.orange,
                            border: Border.all(
                              width: 1,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          width: (_width * 8) / 100,
                          height: (_height * 4) / 100,
                          decoration: BoxDecoration(
                            color: Colors.orange,
                            border: Border.all(
                              width: 1,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
