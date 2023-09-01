import 'package:ex_modular/features/home/pages/screen1_internal_page_a.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'features/home/_export_home.dart';

class AppModule extends Module {
  @override
  void binds(Injector i) {
    // TODO: implement binds
    super.binds(i);
  }

  @override
  void routes(RouteManager r) {
    r.child(
      '/',
      child: (context) => const MyHomePage(
        title: 'Flutter E x Modular',
      ),
    );
    r.child('/screen1', child: (context) => const ScreenOnePage(), children: [
      ChildRoute(
        '/internalPageA',
        child: (context) => const ScreenOneInternalPageA(),
      ),
      ChildRoute(
        '/internalPageB',
        child: (context) => const ScreenOneInternalPageB(),
      ),
      ChildRoute(
        '/internalPageC',
        child: (context) => const ScreenOneInternalPageC(),
      ),
    ]);

    r.child(
      '/screen2',
      child: (context) => ScreenTwoPage(person: r.args.data),
    );
  }
}
