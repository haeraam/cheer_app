import 'package:cheer_app/page/choice_page.dart';
import 'package:cheer_app/page/consolation_juidge_page.dart';
import 'package:cheer_app/page/consolation_page.dart';
import 'package:cheer_app/page/homepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
    return MaterialApp.router(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      routerConfig: GoRouter(routes: [
        GoRoute(
          path: '/',
          builder: (context, state) => const HomePage(),
        ),
        GoRoute(
          path: '/consolation_judge',
          builder: (context, state) => const ConsolationJudgePage(),
        ),
        GoRoute(
          path: '/choice',
          builder: (context, state) => const ChoicePage(),
        ),
        GoRoute(
          path: '/consolation',
          builder: (context, state) => const ConsolationPage(),
        ),
      ]),
    );
  }
}
