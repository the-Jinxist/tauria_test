import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tauria_test/domain/models/topping_model.dart';
import 'package:tauria_test/presentation/list_items/topping_item.dart';
import 'package:tauria_test/presentation/reusables/button.dart';
import 'package:tauria_test/presentation/reusables/margin.dart';
import 'package:tauria_test/presentation/reusables/texts.dart';
import 'package:tauria_test/presentation/utils/colors.dart';
import 'package:tauria_test/presentation/utils/size_config.dart';
import 'package:tauria_test/domain/extensions.dart';

class ChooseToppingScreen extends StatefulWidget {
  const ChooseToppingScreen({Key? key}) : super(key: key);

  @override
  _ChooseToppingScreenState createState() => _ChooseToppingScreenState();
}

class _ChooseToppingScreenState extends State<ChooseToppingScreen> {
  final SizeConfig _config = SizeConfig();

  List<Topping> _listOfToppings = <Topping>[
    Topping(
      toppingName: 'Pepperoni',
      toppingImageName: 'pepperoni',
      toppingPrice: '0.00'
    ),
    Topping(
      toppingName: 'Mushrooms',
      toppingImageName: 'mushrooms',
      toppingPrice: '0.00'
    ),
    Topping(
      toppingName: 'Black Olives',
      toppingImageName: 'mushrooms',
      toppingPrice: '0.00'
    ),
    Topping(
      toppingName: 'Onions',
      toppingImageName: 'mushrooms',
      toppingPrice: '0.00'
    ),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: Icon(
          Icons.arrow_back,
          color: AppColors.textColor,
        ),
        title: NormalText(text: 'Uncle John Pizzas'),
        actions: [
          SvgPicture.asset('home_icon'.toSVG()),
          XMargin(10),
        ],
      ),
      body: Container(
        height: SizeConfig.screenHeightDp,
        width: SizeConfig.screenWidthDp,
        margin: EdgeInsets.only(top: 100),
        child: Stack(
          children: [
            Container(
              height: _config.sh(250).toDouble(),
              width: SizeConfig.screenWidthDp,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [AppColors.redDark, AppColors.redLight],
                    stops: [0.1, 0.9]),
              ),
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  YMargin(20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          NormalText(
                            text: 'Create Your Pizza',
                            textColor: Colors.white,
                            fontSize: 27,
                          ),
                          YMargin(2),
                          Row(
                            children: [
                              TitleText(
                                text: 'MEDIUM',
                                fontSize: 13,
                                textColor: Colors.white,
                              ),
                              XMargin(2),
                              TitleText(
                                text: 'THICK CRUST',
                                fontSize: 13,
                                textColor: Colors.white,
                              ),
                              XMargin(2),
                              TitleText(
                                text: 'TOPPINGS',
                                fontSize: 13,
                                textColor: Colors.white.withOpacity(0.7),
                              ),
                            ],
                          )
                        ],
                      ),
                      TitleText(
                        text: '\$12.00',
                        textColor: Colors.white,
                      )
                    ],
                  ),
                  YMargin(20),
                  SizedBox(
                      height: _config.sh(370).toDouble(),
                      width: _config.sw(370).toDouble(),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            height: _config.sh(350).toDouble(),
                            width: _config.sw(350).toDouble(),
                            child: ClipRect(
                              child: BackdropFilter(
                                filter:
                                    ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white.withOpacity(0.6),
                                    shape: BoxShape.circle,
                                  ),
                                  height: _config.sh(350).toDouble(),
                                  width: _config.sw(350).toDouble(),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: _config.sh(300).toDouble(),
                            width: _config.sw(300).toDouble(),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                            ),
                          ),
                          Image.asset(
                            'thick_crust_pizza'.toPng(),
                            height: _config.sh(250).toDouble(),
                            width: _config.sw(250).toDouble(),
                          )
                        ],
                      )),
                  YMargin(70),
                  SizedBox(
                    height: _config.sh(200).toDouble(),
                    width: SizeConfig.screenWidthDp,
                    child: Stack(children: [
                      Container(
                        height: _config.sh(200).toDouble(),
                        width: SizeConfig.screenWidthDp - 30,
                        child: Column(
                          children: [
                            RichText(
                                text: TextSpan(
                                    text: 'Choose your ',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .copyWith(fontSize: 22),
                                    children: [
                                  TextSpan(
                                    text: 'crust',
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline1!
                                        .copyWith(fontSize: 22),
                                  )
                                ])),
                            YMargin(20),
                          ],
                        ),
                      ),
                      Positioned(
                          bottom: 20,
                          right: 0,
                          left: 0,
                          child: Container(
                            height: 80,
                            width: SizeConfig.screenWidthDp,
                            child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: _listOfToppings.length,
                                itemBuilder:
                                    (BuildContext context, int position) {
                                  return ToppingItem(
                                      topping: _listOfToppings[position],
                                      onToppingSelected: (topping) {});
                                }),
                          ))
                    ]),
                  ),
                  YMargin(70),
                ],
              ),
            ),
            Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: XButton(
                    height: _config.sh(65).toDouble(),
                    width: SizeConfig.screenWidthDp,
                    onClick: () {},
                    text: "Done"))
          ],
        ),
      ),
    );
  }
}
