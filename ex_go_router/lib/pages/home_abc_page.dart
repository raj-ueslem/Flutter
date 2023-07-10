import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeAbcPage extends StatefulWidget {
  const HomeAbcPage({Key? key}) : super(key: key);

  @override
  State<HomeAbcPage> createState() => _HomeAbcPageState();
}

class _HomeAbcPageState extends State<HomeAbcPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(title: const Text('Pagina ABC')),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () => context.go('/'),
              child: const Text('Voltar para a Home'),
            ),
            ElevatedButton(
              onPressed: () => context.go('/home_abc/a'),
              child: const Text('Abrir Pagina A'),
            ),
            ElevatedButton(
              onPressed: () => context.push('/home_abc/a/b'),
              child: const Text('Abrir Pagina B'),
            ),
            ElevatedButton(
              onPressed: () => context.push('/home_abc/a/b/c'),
              child: const Text('Abrir Pagina C'),
            ),
          ],
        ),
      ),
    );
  }
}
