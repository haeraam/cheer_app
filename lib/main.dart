import 'package:cheer_app/page/choice_page.dart';
import 'package:cheer_app/page/consolation_juidge_page.dart';
import 'package:cheer_app/page/consolation_page.dart';
import 'package:cheer_app/page/homepage.dart';
import 'package:cheer_app/page/mypage.dart';
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
          pageBuilder: (context, state) => buildPageWithDefaultTransition(
            context: context,
            state: state,
            child: const HomePage(),
          ),
        ),
        GoRoute(
          path: '/consolation_judge',
          pageBuilder: (context, state) => buildPageWithDefaultTransition(
            context: context,
            state: state,
            child: const ConsolationJudgePage(),
          ),
        ),
        GoRoute(
          path: '/choice',
          pageBuilder: (context, state) => buildPageWithDefaultTransition(
            context: context,
            state: state,
            child: const ChoicePage(),
          ),
        ),
        GoRoute(
          path: '/consolation',
          pageBuilder: (context, state) => buildPageWithDefaultTransition(
            context: context,
            state: state,
            child: const ConsolationPage(),
          ),
        ),
        GoRoute(
          path: '/myPage',
          pageBuilder: (context, state) => buildPageWithDefaultTransition(
            context: context,
            state: state,
            child: const MyPage(),
          ),
        ),
      ]),
    );
  }
}

CustomTransitionPage buildPageWithDefaultTransition<T>({
  required BuildContext context,
  required GoRouterState state,
  required Widget child,
}) {
  return CustomTransitionPage<T>(
    transitionDuration: const Duration(milliseconds: 340),
    key: state.pageKey,
    child: child,
    transitionsBuilder: (context, animation, secondaryAnimation, child) => FadeTransition(
      opacity: animation,
      child: child,
    ),
  );
}
