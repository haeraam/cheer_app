import 'dart:async';
import 'dart:math';

import 'package:cheer_app/widget/clay_box.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ConsolationJudgePage extends StatefulWidget {
  const ConsolationJudgePage({super.key});

  @override
  State<ConsolationJudgePage> createState() => _ConsolationJudgePageState();
}

class _ConsolationJudgePageState extends State<ConsolationJudgePage> {
  Timer? _timer;
  bool? isGood;
  List testList = [
    "너는 최고야",
    "잘 할 수 있어!",
    "그거아무것도 아니야",
    "별거 아니야",
    "괜찮아, 실패는 성장의 일부야.",
    "실패는 성공으로 가는 길에 필요한 한 걸음일 뿐이야.",
    "계속 노력하면 꼭 좋은 결과를 얻을 수 있을 거야.",
    "너의 노력은 눈에 띄어, 그래서 더 멋진 결과를 이루게 될 거야.",
    "계속해서 노력하면 반드시 원하는 결과를 얻게 될 거야.",
  ];
  int testindex = 0;

  _reset() {
    _timer = Timer(const Duration(milliseconds: 300), () {
      isGood = null;
      testindex = Random().nextInt(testList.length);
      if (context.mounted) setState(() {});
    });
  }

  @override
  void dispose() {
    super.dispose();
    if (_timer != null) {
      _timer!.cancel();
    }
  }

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
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ClayBox(
                  width: 310,
                  height: 140,
                  child: Text(
                    testList[testindex],
                    style: const TextStyle(
                      color: Color(0xFF40628E),
                      fontSize: 20,
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                ),
                const SizedBox(height: 24),
                SizedBox(
                  width: 220,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClayBox(
                        width: 100,
                        height: 100,
                        onPressed: () {
                          isGood = true;
                          setState(() {});
                          _reset();
                        },
                        child: Icon(
                          Icons.sentiment_very_satisfied,
                          color: Color.fromARGB(isGood ?? false ? 255 : 44, 64, 98, 142),
                          size: 48,
                        ),
                      ),
                      ClayBox(
                        width: 100,
                        height: 100,
                        onPressed: () {
                          isGood = false;
                          setState(() {});
                          _reset();
                        },
                        child: Icon(
                          Icons.sentiment_very_dissatisfied,
                          color: Color.fromARGB(!(isGood ?? true) ? 255 : 44, 64, 98, 142),
                          size: 48,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 140),
                ClayBox(
                  onPressed: () {
                    context.go('/consolation');
                  },
                  width: 170,
                  height: 75,
                  child: const Text(
                    '위로받기',
                    style: TextStyle(
                      color: Color(0xFF40628E),
                      fontSize: 24,
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
