import 'package:cheer_app/widget/background.dart';
import 'package:cheer_app/widget/clay_box.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrapper(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 150),
          child: ClayBox(
            onPressed: () {
              context.go('/choice');
            },
            width: 190,
            height: 75,
            child: Text(
              '위로받기',
              style: GoogleFonts.roboto().copyWith(
                color: const Color(0xFF40628E),
                fontSize: 24,
                fontWeight: FontWeight.w200,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
