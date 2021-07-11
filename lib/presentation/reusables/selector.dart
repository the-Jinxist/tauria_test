import 'package:flutter/material.dart';
import 'package:tauria_test/presentation/reusables/texts.dart';
import 'package:tauria_test/presentation/utils/colors.dart';

class Selector extends StatefulWidget {
  final List<String> options;
  final Function(String) optionSelected;

  const Selector(
    this.options,
    this.optionSelected, {
    Key? key,
  }) : super(key: key);

  @override
  _SelectorState createState() => _SelectorState();
}

class _SelectorState extends State<Selector> {

  int selected = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List<Widget>.generate(widget.options.length, (index) {
        return GestureDetector(
          onTap: () {
            setState(() {
              selected = index;
            });

            widget.optionSelected(widget.options[index]);
          },
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
            decoration: BoxDecoration(
              color: selected != index ? Colors.transparent : null,
              gradient: selected == index
                  ? LinearGradient(
                      colors: [AppColors.redDark, AppColors.redLight],
                      stops: [0.1, 0.9])
                  : null,
              borderRadius: BorderRadius.circular(30),
              boxShadow: selected == index
                  ? [
                      BoxShadow(
                          blurRadius: 10,
                          spreadRadius: 3,
                          color: AppColors.redDark.withOpacity(0.3))
                    ]
                  : null,
            ),
            child: selected == index
                ? TitleText(
                    text: widget.options[index],
                    fontSize: 15,
                    textColor: Colors.white,
                    fontWeight: FontWeight.w500,
                  )
                : NormalText(text: widget.options[index]),
          ),
        );
      }),
    );
  }
}
