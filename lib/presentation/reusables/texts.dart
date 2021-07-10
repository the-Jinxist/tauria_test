import 'package:flutter/material.dart';
import 'package:tauria_test/presentation/utils/colors.dart';
import 'package:tauria_test/presentation/utils/size_config.dart';

class TitleText extends StatelessWidget {
  final String? text;
  final double? fontSize;
  final Color? textColor;
  final TextAlign? textAlign;
  final int? maxLines;
  final FontWeight? fontWeight;

  const TitleText(
      {@required this.text,
      this.fontSize,
      this.textColor,
      this.textAlign,
      this.maxLines,
      this.fontWeight});

  @override
  Widget build(BuildContext context) {
    return Text(
      text!,
      maxLines: maxLines ?? 1,
      overflow: TextOverflow.ellipsis,
      textAlign: textAlign ?? TextAlign.start,
      style: Theme.of(context).textTheme.headline1!.copyWith(
          fontSize: fontSize != null
              ? SizeConfig().sp(fontSize!).toDouble()
              : SizeConfig().sp(25).toDouble(),
          color: textColor ?? AppColors.textColor,
          fontWeight: fontWeight ?? FontWeight.bold),
    );
  }
}

class NormalText extends StatelessWidget {
  final String? text;
  final double? fontSize;
  final Color? textColor;
  final TextAlign? textAlign;
  final FontWeight? fontWeight;
  final int? maxLines;
  final TextDecoration? textDecoration;

  const NormalText(
      {@required this.text,
      this.fontSize,
      this.textColor,
      this.textAlign,
      this.fontWeight,
      this.maxLines,
      this.textDecoration
      });

  @override
  Widget build(BuildContext context) {
    return Text(
      text!,
      maxLines: maxLines ?? 1,
      overflow: TextOverflow.ellipsis,
      textAlign: textAlign ?? TextAlign.start,
      style: Theme.of(context).textTheme.bodyText1!.copyWith(
          decoration: textDecoration,
          fontSize: fontSize != null
          
              ? SizeConfig().sp(fontSize!).toDouble()
              : SizeConfig().sp(15).toDouble(),
          color: textColor ?? AppColors.textColor,
          fontWeight: fontWeight ?? FontWeight.normal),
    );
  }
}
