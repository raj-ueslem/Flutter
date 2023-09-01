import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ScreenOnePage extends StatelessWidget {
  const ScreenOnePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen 1'),
      ),
      body: Column(
        children: [
          Column(
            children: [
              ListTile(
                title: const Text('goto Page A'),
                onTap: _launchScreenOneInternalA,
              ),
              ListTile(
                title: const Text('goto Page B'),
                onTap: _launchScreenOneInternalB,
              ),
              ListTile(
                title: const Text('goto Page C'),
                onTap: _launchScreenOneInternalC,
              ),
            ],
          ),
          const Expanded(child: RouterOutlet()),
        ],
      ),
    );
  }

  _launchScreenOneInternalA() => Modular.to.navigate('/screen1/internalPageA');
  _launchScreenOneInternalB() => Modular.to.navigate('/screen1/internalPageB');
  _launchScreenOneInternalC() => Modular.to.navigate('/screen1/internalPageC');
}
