import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String html =
  '''
  <html>
    <head>
      <h3>Heading</h3>
      <h3 class="h3_test">Teste</h3>
      <h3 id="h3_tests">Teste</h3>
    </head>
    <body>
      <p>
        A paragraph with <strong>strong</strong>, <em>emphasized</em>
        and <span style="color: red">colored</span> text.
      </p>
      <a href="www.google.com">Link</a>
      <iframe width="640" height="360" src="https://www.youtube.com/watch?v=FezNgPThD3M" frameborder="0" allow="accelerometer; autoplay; clipboard-write"></iframe>
    </body>
  </html>
  ''';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: HtmlWidget(html,
        customStylesBuilder: (element) {
          if (element.classes.contains('h3_test')) {
            return {'color': 'green'};
          }

          return null;
        },

        // render a custom widget
        customWidgetBuilder: (element) {
          if (element.attributes['id'] == 'h3_tests') {
            return Container(
              height: 30,
              color: Colors.red,
              child: Text(element.text),
            );
          }

          return null;
        },

        // these callbacks are called when a complicated element is loading
        // or failed to render allowing the app to render progress indicator
        // and fallback widget
        onErrorBuilder: (context, element, error) => Text('$element error: $error'),
        onLoadingBuilder: (context, element, loadingProgress) => const CircularProgressIndicator(),

        // this callback will be triggered when user taps a link
        onTapUrl: (url) {
          debugPrint('tapped $url');
          return true;
        },

        // select the render mode for HTML body
        // by default, a simple `Column` is rendered
        // consider using `ListView` or `SliverList` for better performance
        renderMode: RenderMode.listView,

        // set the default styling for text
        textStyle: const TextStyle(fontSize: 30),
      ),
    );
  }
}