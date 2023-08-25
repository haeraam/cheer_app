import 'package:cheer_app/widget/background.dart';
import 'package:cheer_app/widget/clay_box.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class ConsolationPage extends StatelessWidget {
  const ConsolationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrapper(
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(child: Container()),
            ClayBox(
              onPressed: () {
                context.go('/choice');
              },
              width: double.infinity,
              height: 300,
              opacity: 0.1,
              padding: 40,
              child: const Text(
                '축하해',
                style: TextStyle(
                  color: Color(0xFF40628E),
                  fontSize: 28,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Expanded(child: Container()),
            ClayBox(
              width: 80,
              height: 80,
              padding: 0,
              opacity: 0.1,
              onPressed: () {
                context.go('/');
              },
              child: const Icon(
                Icons.home,
                color: Color.fromARGB(255, 64, 98, 142),
                size: 44,
              ),
            ),
              const SizedBox(height: 120),
          ],
        ),
      ),
    );
  }
}
