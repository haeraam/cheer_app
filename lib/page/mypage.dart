import 'package:cheer_app/widget/background.dart';
import 'package:cheer_app/widget/clay_box.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyPage extends StatelessWidget {
  const MyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrapper(
      showMyPage: false,
      showPop: true,
      child: Center(
        child: ClayBox(
            width: 190,
            height: 75,
          child: Text(
            'my page',
            style: GoogleFonts.roboto().copyWith(
              color: const Color(0xFF40628E),
              fontSize: 20,
              fontWeight: FontWeight.w200,
            ),
          ),
        ),
      ),
    );
  }
}
