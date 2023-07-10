import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:showcaseview/showcaseview.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final GlobalKey _first = GlobalKey();
  final GlobalKey _second = GlobalKey();
  final GlobalKey _third = GlobalKey();
  final GlobalKey _fourth = GlobalKey();
  final GlobalKey _fifth = GlobalKey();

  // @override
  // void initState() {
  //   super.initState();
  //   WidgetsBinding.instance.addPostFrameCallback(
  //         (_) => ShowCaseWidget.of(context)
  //         .startShowCase([_first, _second, _third, _fourth, _fifth]),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    SharedPreferences preferences;

    displayShowCase() async {
      preferences = await SharedPreferences.getInstance();
      bool? showcaseVisibilityStatus = preferences.getBool("showShowcase");
      if (showcaseVisibilityStatus == null) {
        preferences.setBool("showShowcase", false).then((bool success) {
          /*if (success)
            print("Entrou em showCase");
          else
            print("Tivemos um problema");
        */
        });
        return true;
      }
      return false;
    }

    displayShowCase().then((status) {
      if (status) {
        ShowCaseWidget.of(context)
            .startShowCase([_first, _second, _third, _fourth, _fifth]);
      }
    });

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: [
          Showcase(
            key: _second,
            description: "Compartilhe com seus colegas e grupos de estudos",
            child: IconButton(
              icon: const Icon(Icons.share),
              onPressed: () {},
            ),
          ),
          Showcase(
            key: _third,
            description: "Aqui você acessa as configurações",
            child: IconButton(
              icon: const Icon(Icons.construction_rounded),
              onPressed: () {},
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Showcase(
                key: _first,
                description:
                    "Estes são os cards, ficarão sempre visíveis na home",
                child: const Card(
                  margin: EdgeInsets.all(20),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ListTile(
                        title: Text('Person 1'),
                        subtitle: Text('This is a description'),
                      ),
                      ListTile(
                        title: Text('Person 2'),
                        subtitle: Text('This is a description'),
                      ),
                      ListTile(
                        title: Text('Person 3'),
                        subtitle: Text('This is a description'),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
