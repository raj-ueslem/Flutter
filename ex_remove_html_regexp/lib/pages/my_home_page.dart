import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {

  String htmlCompleted =
  '''
    <html>
      <head>
      <title>Opa</title>
      </head>
      <body>
        <h1 class='heading1'>Heading 1</h1>
      </body>
    </html>
  ''';

  String htmlJavaScript =
  '''
    <div>
      <div style='text-align: justify;'>
        <script>alert("oi");</script>
        <p>Olá, Este é meu Html<br/>Bem Legal.
        <span>,feito!</span>
        </p>
      </div>
    </div>
  ''';

  Text _columnHtmlCompletedText() => Text(_removeHtmlWithRegExp(htmlCompleted));
  Text _columnHtmlJavaScriptText() => Text(_removeHtmlJSWithRegExp(htmlJavaScript));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text(widget.title),
    ),
    body: Column(
      children: [
        _columnHtmlCompletedText(),
        _columnHtmlJavaScriptText(),
      ],
    ));
  }

  String _removeHtmlWithRegExp(String html) {
    RegExp expression = RegExp(r"<[^>]*>", multiLine: true, caseSensitive: true);
    return html.replaceAll(expression, ' ');
  }

  String _removeHtmlJSWithRegExp(String html) {
    RegExp expression = RegExp(r"<[^>]*>|&[^;]+;", multiLine: true, caseSensitive: true);
    return html.replaceAll(expression, ' ');
  }

}