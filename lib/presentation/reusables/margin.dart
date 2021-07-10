import 'package:flutter/material.dart';
import 'package:tauria_test/presentation/utils/size_config.dart';

class XMargin extends StatelessWidget {
  final double width;

  const XMargin(this.width);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: SizeConfig().sw(width).toDouble(),
    );
  }
}

class YMargin extends StatelessWidget {
  final double height;

  const YMargin(this.height);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: SizeConfig().sh(height).toDouble(),
    );
  }
}