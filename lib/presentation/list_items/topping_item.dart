import 'package:flutter/material.dart';
import 'package:tauria_test/domain/models/topping_model.dart';
import 'package:tauria_test/domain/extensions.dart';
import 'package:tauria_test/presentation/reusables/margin.dart';
import 'package:tauria_test/presentation/reusables/texts.dart';
import 'package:tauria_test/presentation/utils/colors.dart';
import 'package:tauria_test/presentation/utils/size_config.dart';

class ToppingItem extends StatefulWidget {
  final Topping topping;
  final Function(Topping) onToppingSelected;

  const ToppingItem(
      {Key? key, required this.topping, required this.onToppingSelected})
      : super(key: key);

  @override
  _ToppingItemState createState() => _ToppingItemState();
}

class _ToppingItemState extends State<ToppingItem> {
  bool isSelected = false;

  final SizeConfig _config = SizeConfig();

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(widget.topping.toppingImageName.toPng()),
                XMargin(10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TitleText(
                      text: widget.topping.toppingName,
                      fontSize: 17,
                    ),
                    NormalText(text: '+\$${widget.topping.toppingPrice}')
                  ],
                )
              ],
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  isSelected = !isSelected;
                });
              },
              child: Container(
                  height: _config.sh(30).toDouble(),
                  width: _config.sw(30).toDouble(),
                  decoration: BoxDecoration(
                    color: !isSelected ? AppColors.backgroundColor : null,
                    gradient: isSelected
                        ? LinearGradient(
                            colors: [AppColors.redDark, AppColors.redLight],
                            stops: [0.1, 0.9])
                        : null,
                    boxShadow: isSelected
                        ? [
                            BoxShadow(
                                blurRadius: 5,
                                spreadRadius: 5,
                                color: AppColors.redDark)
                          ]
                        : [
                            BoxShadow(color: Colors.grey),
                            BoxShadow(
                                blurRadius: 12.0,
                                spreadRadius: -12.0,
                                color: AppColors.backgroundColor)
                          ],
                  ),
                  child: isSelected
                      ? Center(
                          child: Icon(
                            Icons.check,
                            color: Colors.white,
                            size: 12,
                          ),
                        )
                      : SizedBox()),
            )
          ],
        ),
      ),
    );
  }
}
