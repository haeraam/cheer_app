import 'package:cheer_app/widget/background.dart';
import 'package:cheer_app/widget/clay_box.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ChoicePage extends StatelessWidget {
  const ChoicePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrapper(
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ClayBox(
              onPressed: () {
                context.go('/consolation');
              },
              width: 170,
              height: 75,
              child: const Text(
                '바로 위로받기',
                style: TextStyle(
                  color: Color(0xFF40628E),
                  fontSize: 20,
                  fontWeight: FontWeight.w200,
                ),
              ),
            ),
            const SizedBox(height: 20),
            ClayBox(
              onPressed: () {
                context.go('/consolation_judge');
              },
              width: 240,
              height: 75,
              child: const Text(
                '좋아하는 위로 고르기',
                style: TextStyle(
                  color: Color(0xFF40628E),
                  fontSize: 20,
                  fontWeight: FontWeight.w200,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
