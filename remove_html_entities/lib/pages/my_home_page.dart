import 'package:flutter/material.dart';
import 'package:html_unescape/html_unescape.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  String htmlEntities =
  '''
    <div style="text-align: justify">
      <p>
        <strong>
          <span style="font-size: 18pt;">Hora de voltar &#xE0;s aulas!</span>
        </strong>
      </p>
    </div> 
  ''';

  String htmlExample =
      '''
      "&lt;strong&#62;This &quot;escaped&quot; string"
      ''';

  Text _columnHtmlEntities() => Text(_parseWithHtmlUnescape(htmlEntities), style: const TextStyle(fontSize: 30),);

  Text _columnHtmlExample() => Text(_parseWithHtmlUnescape(htmlExample), style: const TextStyle(fontSize: 30),);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Column(
          children: [
            _columnHtmlEntities(),
            _columnHtmlExample(),
          ],
        ),
    );
  }

  _parseWithHtmlUnescape(String html) {
    final unescape = HtmlUnescape();
    return unescape.convert(html);
  }
}