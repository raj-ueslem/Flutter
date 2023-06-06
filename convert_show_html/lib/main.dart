import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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

  // final String htmlcode = '''
  //   <h1>H1 Title</h1>
  //    <h2>H2 Title</h2>
  //       <p>A paragraph with <strong>bold</strong> and <u>underline</u> text.</p>
  //       <ol>
  //         <li>List 1</li>
  //         <li>List 2<ul>
  //             <li>List 2.1 (nested)</li>
  //             <li>List 2.2</li>
  //            </ul>
  //         </li>
  //         <li>Three</li>
  //       </ol>
  //    <a href="https://www.hellohpc.cdom">Link to HelloHPC.com</a>
  //    <img src='https://www.hellohpc.com/wp-content/uploads/2020/05/flutter.png'/>
  //   ''';

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: HtmlWidget(
            // the first parameter (`html`) is required
            '''
      <h1>H1 Title</h1>
      <h2>H2 Title</h2>
      <p>A paragraph with <strong>bold</strong> and <u>underline</u> text.</p>
      <ol>
        <li>List 1</li>
        <li>List 2<ul>
            <li>List 2.1 (nested)</li>
            <li>List 2.2</li>
           </ul>
        </li>
        <li>Three</li>
      </ol>
     <a href="https://www.hellohpc.cdom">Link to HelloHPC.com</a>
     <img src='https://www.hellohpc.com/wp-content/uploads/2020/05/flutter.png'/>
      <!-- anything goes here -->
      ''',

            // all other parameters are optional, a few notable params:

            // specify custom styling for an element
            // see supported inline styling below
            customStylesBuilder: (element) {
              if (element.classes.contains('foo')) {
                return {'color': 'red'};
              }

              return null;
            },

            // render a custom widget
            // customWidgetBuilder: (element) {
            //   if (element.attributes['foo'] == 'bar') {
            //     return FooBarWidget();
            //   }
            //
            //   return null;
            // },

            // these callbacks are called when a complicated element is loading
            // or failed to render allowing the app to render progress indicator
            // and fallback widget
            onErrorBuilder: (context, element, error) => Text('$element error: $error'),
            onLoadingBuilder: (context, element, loadingProgress) => const CircularProgressIndicator(),

            // this callback will be triggered when user taps a link
            //onTapUrl: (url) => print('tapped $url'),

            // select the render mode for HTML body
            // by default, a simple `Column` is rendered
            // consider using `ListView` or `SliverList` for better performance
            renderMode: RenderMode.column,

            // set the default styling for text
            textStyle: const TextStyle(fontSize: 14),

            // turn on `webView` if you need IFRAME support (it's disabled by default)
            //webView: true,
          ),
    );
  }
}
