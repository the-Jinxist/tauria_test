import 'package:flutter/material.dart';
import 'package:tauria_test/presentation/reusables/margin.dart';
import 'package:tauria_test/presentation/reusables/texts.dart';
import 'package:tauria_test/presentation/utils/colors.dart';
import 'package:tauria_test/presentation/utils/size_config.dart';

class XButton extends StatelessWidget {
  final double? height;
  final double? width;
  final Function? onClick;
  final String? text;
  final double? radius;
  final Color? buttonColor;
  final Color? textColor;
  late bool isLoading;
  final Color? progressColor;
  final double? textSize;
  final FontWeight? fontWeight;
  late bool isOutline;
  final Color? borderColor;
  final String? imagePath;
  final Color? imageColor;
  final Widget? icon;

  XButton(
      {@required this.onClick,
      @required this.text,
      this.height,
      this.width,
      this.radius,
      this.buttonColor,
      this.textColor,
      this.isLoading = false,
      this.progressColor,
      this.textSize,
      this.fontWeight,
      this.isOutline = false,
      this.borderColor,
      this.imagePath,
      this.imageColor,
      this.icon});

  final SizeConfig config = SizeConfig();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (!isLoading) {
          if (onClick != null) {
            onClick!();
          }
          
        }
      },
      child: Container(
        height: height != null
            ? config.sh(height!).toDouble()
            : config.sh(50).toDouble(),
        width: width != null
            ? config.sw(width!).toDouble()
            : config.sw(100).toDouble(),
        decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [AppColors.redDark, AppColors.redLight], 
              stops: [0.1, 0.9]
            ),
            boxShadow: [BoxShadow(
              blurRadius: 10,
              spreadRadius: 5,
              color: AppColors.redDark.withOpacity(0.4)
            )],
            borderRadius: radius != null
                ? BorderRadius.circular(radius!)
                : BorderRadius.circular(5.0),
            border: isOutline
                ? Border.all(
                    color: borderColor ?? Theme.of(context).accentColor,
                  )
                : null),
        child: Center(
            child: isLoading
                ? SizedBox(
                    height: config.sh(20).toDouble(),
                    width: config.sh(20).toDouble(),
                    child: CircularProgressIndicator(
                      strokeWidth: 2.0,
                      valueColor: progressColor != null
                          ? AlwaysStoppedAnimation<Color>(progressColor!)
                          : const AlwaysStoppedAnimation<Color>(Colors.white),
                    ),
                  )
                : Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      icon != null ? icon! : SizedBox(),
                      icon != null ? XMargin(2) : SizedBox(),
                      imagePath != null
                          ? Image.asset(
                              imagePath!,
                              color: imageColor,
                              height: config.sh(17).toDouble(),
                              width: config.sh(17).toDouble(),
                            )
                          : SizedBox(),
                      imagePath != null ? XMargin(2) : SizedBox(),
                      NormalText(
                        text: text!,
                        textColor: textColor ?? Colors.white,
                        fontSize: textSize == null
                            ? config.sp(15).toDouble()
                            : config.sp(textSize!).toDouble(),
                        fontWeight: fontWeight ?? FontWeight.w700,
                      ),
                    ],
                  )),
      ),
    );
  }
}
