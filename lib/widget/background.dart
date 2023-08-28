// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({
    Key? key,
    this.showMyPage = true,
    this.showPop = false,
    this.child,
  }) : super(key: key);
  final Widget? child;
  final bool showMyPage;
  final bool showPop;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF91c0ff),
        leading: showPop ? GestureDetector(
          onTap: () {
            context.pop();
          },
          child: const Icon(
            Icons.keyboard_arrow_left,
            color: Colors.white,
            size: 36,
          ),
        ) : null,
        actions: [
          if (showMyPage)
            GestureDetector(
              onTap: () {
                context.push('/myPage');
              },
              child: const Icon(
                Icons.menu,
                color: Colors.white,
                size: 36,
              ),
            ),
          const SizedBox(width: 20)
        ],
      ),
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
