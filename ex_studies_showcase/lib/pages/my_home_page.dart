import 'package:flutter/material.dart';
import 'package:showcaseview/showcaseview.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  final GlobalKey _first = GlobalKey();
  final _second = GlobalKey();
  final _third = GlobalKey();
  final _fourth = GlobalKey();
  final _fifth = GlobalKey();

  final String _imgaUrl =
      'https://scontent.fpoa43-1.fna.fbcdn.net/v/t1.18169-9/17103246_1466714446686449_5552129435808263015_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=uckWdASGWhQAX8VGyi8&_nc_ht=scontent.fpoa43-1.fna&oh=00_AfD0DCxcDcKS8CIwDMB02qrKJauVNaVLc8FMp4tyKGlcFg&oe=64AAE885';
  final String _imageCoringaUrl =
      'https://www.torredevigilancia.com/wp-content/uploads/2019/10/coringa-55.jpg';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        leading: Showcase(
          key: _first,
          description: 'Pressione aqui para abrir',
          child: IconButton(
            onPressed: () => _scaffoldKey.currentState!.openDrawer(),
            icon: const Icon(
              Icons.menu,
              color: Colors.blue,
            ),
          ),
        ),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Showcase(
          key: _second,
          description: 'Texto da App Bar',
          child: Text(widget.title),
        ),
        actions: [
          Showcase(
            key: _third,
            description: 'Press to view Profile',
            child: Container(
              padding: const EdgeInsets.all(5),
              width: 45,
              height: 45,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Theme.of(context).primaryColor,
              ),
              child: Image.network(_imageCoringaUrl),
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Showcase(
            key: _fourth,
            description: 'Imagem importada da rede para o exemplo ',
            child: Image.network(_imgaUrl),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: ElevatedButton(
              style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(
                  Color(0xff2C3B48),
                ),
              ),
              onPressed: () => WidgetsBinding.instance.addPostFrameCallback(
                  (_) => ShowCaseWidget.of(context)
                      .startShowCase([_first, _second, _third, _fourth])),
              child: const Text(
                'Aperta para Fazer o ShowCase',
                style: TextStyle(
                  color: Color(0xffFFFFFF),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) =>
        ShowCaseWidget.of(context)
            .startShowCase([_first, _second, _third, _fourth, _fifth]));
  }
}
