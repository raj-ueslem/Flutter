import 'package:ex_componentizacao/component/_export_components.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  TextComponent _rowTextComponent1() => const TextComponent(title: 'Raj', fontSize: 30,);

  TextComponent _rowTextComponent2() =>
      const TextComponent(title: 'pagani', textAlign: TextAlign.end,);

  TextNewComponents _rowTextNewComponent3() => const TextNewComponents(data: 'Luiz',);

  Widget _rowElevatedButton() => ElevatedButtonComponent(onPressed: () => _showPrint(),title: 'Clique aqui');

  GestureDetector _rowGestureDetector() => GestureDetector(
    onTap: () => _showPrint,
    child: const TextNewComponents(data: "Click aqui..."),
  );

  TextClickComponent _rowNewComponent() => TextClickComponent(
      onTap: () => _showPrint,
      child: const TextNewComponents(data: "OIeeeeeeee",));

  LinearProgressIndicatorComponent _rowLinearProgress() => const LinearProgressIndicatorComponent(progressPercentage: 90.0);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          _rowTextComponent1(),
          _rowTextComponent2(),
          _rowTextNewComponent3(),
          _rowElevatedButton(),
          _rowGestureDetector(),
          _rowNewComponent(),
          _rowLinearProgress(),

          // ElevatedButton(onPressed: () {
          //   print('clicou');
          //   },
          //     child: const Text('Click aqui')
          // ),

        ],
      ),
    );
  }

  _showPrint() => debugPrint('Clicou');
}