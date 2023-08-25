// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({
    Key? key,
    this.child,
  }) : super(key: key);
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          colors: [Color(0xFF91c0ff), Color(0xFFFFFFFF)],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        )),
        child: child,
      ),
    );
  }
}
