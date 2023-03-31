import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'StarBucks',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(title: 'StarBucks'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // final screenWidth = MediaQuery.of(context).size.width;
    // final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white.withOpacity(.89),
      appBar: AppBar(
        title: Text(
          widget.title,
        ),
        backgroundColor: Colors.green,
      ),
      body: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              SizedBox(
                height: 10,
              ),
              Text(
                "Clássico",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.brown),
              ),
              Text(
                "Solicite também na versão gelada."
                "\nAlso available iced.",
                style: TextStyle(
                    fontWeight: FontWeight.w200,
                    fontSize: 20,
                    color: Colors.black),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          const SizedBox(height: 10,),
          Stack(
            children: [
              Image.asset(
                "assets/cafeteria.png",
              ),
              Positioned(
                bottom: 2,
                right: 0,
                left: 0,
                child: Container(
                  alignment: Alignment.center,
                  // width: (screenWidth * 90) / 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white70,
                  ),
                  child: const Text(
                    "CARAMELO MACCHIATO",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black
                        //fromRGBO(160,82,45, 100),
                        ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10,),//Scroll
          Container(
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              color: Color.fromRGBO(211, 211, 211, 100),
              borderRadius: BorderRadius.vertical(top: Radius.circular(50)),
            ),
            child: Column(
              children: const [
                SizedBox(height: 10,),
                Text(
                  'Caramelo',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 30,
                    color: Colors.brown,
                  ),
                ),
                SizedBox(height: 5,),
                Text(
                  "Leite vaporizado, um toque de baunilha, dose de espresso e cobertura de caramelo",
                  style: TextStyle(
                      fontWeight: FontWeight.w200,
                      fontSize: 20,
                      color: Colors.black),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Steam milk with vanilla, espresso, topped with caramel sauce.",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.grey),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(211, 211, 211, 100),
                    borderRadius:
                        BorderRadius.vertical(bottom: Radius.circular(50)),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            decoration: const BoxDecoration(
                              color: Color.fromRGBO(211, 211, 211, 100),
                            ),
                            child: Column(
                              children: const [
                                Icon(Icons.add_business),
                                Text("Prep: "
                                    "\n25 min"),
                              ],
                            ),
                          ),
                          Container(
                            decoration: const BoxDecoration(
                              color: Color.fromRGBO(211, 211, 211, 100),
                            ),
                            child: Column(
                              children: const [
                                Icon(Icons.add_business),
                                Text("Prep: "
                                    "\n25 min"),
                              ],
                            ),
                          ),
                          Container(
                            decoration: const BoxDecoration(
                              color: Color.fromRGBO(211, 211, 211, 100),
                            ),
                            child: Column(
                              children: const [
                                Icon(Icons.add_business),
                                Text("Prep: "
                                    "\n25 min"),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 40,
                            ),
                            Text(
                              "170 Views",
                              style: TextStyle(color: Colors.blue),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 10,),
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
