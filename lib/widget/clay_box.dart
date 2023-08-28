// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';

class ClayBox extends StatefulWidget {
  const ClayBox({
    Key? key,
    this.child,
    this.width,
    this.height,
    this.onPressed,
    this.opacity = 0.8,
    this.padding = 24,
  }) : super(key: key);
  final Widget? child;
  final double? width;
  final double? height;
  final Function? onPressed;
  final double opacity;
  final double padding;

  @override
  State<ClayBox> createState() => _ClayBoxState();
}

class _ClayBoxState extends State<ClayBox> {
  late double _width;
  late double _height;
  final int _animationDuration = 90;

  @override
  void initState() {
    super.initState();
    _width = widget.width ?? 0;
    _height = widget.height ?? 0;
  }

  _onPressed() {
    if (widget.onPressed != null) {
      widget.onPressed!();
    }
    _width = _width * 1.1;
    _height = _height * 1.1;
    setState(() {});
    Timer(Duration(milliseconds: _animationDuration), () {
      _width = widget.width ?? 0;
      _height = widget.height ?? 0;
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _onPressed,
      child: AnimatedContainer(
        duration: Duration(milliseconds: _animationDuration),
        curve: Curves.easeOut,
        width: _width,
        height: _height,
        padding: EdgeInsets.all(widget.padding),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(min(_width, _height) / 3),
          boxShadow: [
            BoxShadow(
              color: Color.fromRGBO(145, 192, 255, widget.opacity / 2),
              offset: Offset((_width) / 20, (_height) / 20),
              blurRadius: min(_width, _height) / 12,
              spreadRadius: 3,
            ),
            BoxShadow(
              color: Color.fromRGBO(145, 192, 255, widget.opacity / 8 * 3),
              offset: const Offset(0, 0),
              blurRadius: min(_width, _height) / 30,
              spreadRadius: 0,
              blurStyle: BlurStyle.inner,
            ),
            BoxShadow(
              color: Color.fromRGBO(255, 255, 255, widget.opacity),
              offset: const Offset(0, 0),
              blurRadius: min(_width, _height) / 10,
              spreadRadius: 0,
              blurStyle: BlurStyle.inner,
            ),
          ],
        ),
        child: Center(child: widget.child),
      ),
    );
  }
}
