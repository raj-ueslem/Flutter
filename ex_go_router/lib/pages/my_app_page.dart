import 'package:ex_go_router/pages/_export_pages.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final GoRouter _router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const MyHomePage(title: 'Flutter Ex Go Router');
      },
      routes: <RouteBase>[
        GoRoute(
          name: 'settings',
          path: 'settings/:name',
          builder: (BuildContext context, GoRouterState state) {
            return SettingsPage(
              name: state.pathParameters['name']!,
            );
          },
        ),
        GoRoute(
            path: 'home_abc',
            builder: (BuildContext context, GoRouterState state) {
              return const HomeAbcPage();
            },
            routes: <RouteBase>[
              GoRoute(
                  path: 'a',
                  builder: (BuildContext context, GoRouterState state) {
                    return const APage();
                  },
                  routes: <RouteBase>[
                    GoRoute(
                        path: 'b',
                        builder: (BuildContext context, GoRouterState state) {
                          return const BPage();
                        },
                        routes: <RouteBase>[
                          GoRoute(
                            path: 'c',
                            builder:
                                (BuildContext context, GoRouterState state) {
                              return const CPage();
                            },
                          ),
                        ]),
                  ]),
            ]),
      ],
    ),
  ],
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter GoRouter',
      theme: ThemeData(useMaterial3: true, primarySwatch: Colors.blue),
      routerConfig: _router,
      // home: const MyHomePage(title: 'Flutter Ex Go Router'),
    );
  }
}
