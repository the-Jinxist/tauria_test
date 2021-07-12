import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tauria_test/domain/models/topping_model.dart';
import 'package:tauria_test/presentation/list_items/topping_item.dart';
import 'package:tauria_test/presentation/reusables/button.dart';
import 'package:tauria_test/presentation/reusables/margin.dart';
import 'package:tauria_test/presentation/reusables/texts.dart';
import 'package:tauria_test/presentation/screens/confirm_pizza_screen.dart';
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
        toppingPrice: '0.00'),
    Topping(
        toppingName: 'Mushrooms',
        toppingImageName: 'mushrooms',
        toppingPrice: '0.00'),
    Topping(
        toppingName: 'Black Olives',
        toppingImageName: 'mushrooms',
        toppingPrice: '0.00'),
    Topping(
        toppingName: 'Onions',
        toppingImageName: 'mushrooms',
        toppingPrice: '0.00'),
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
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
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
                                  text: 'MEDIUM,',
                                  fontSize: 12,
                                  textColor: Colors.white,
                                ),
                                XMargin(5),
                                TitleText(
                                  text: 'THICK CRUST,',
                                  fontSize: 12,
                                  textColor: Colors.white,
                                ),
                                XMargin(5),
                                TitleText(
                                  text: 'TOPPINGS',
                                  fontSize: 12,
                                  textColor: Colors.white.withOpacity(0.5),
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
                  ),
                  YMargin(30),
                  SizedBox(
                      height: _config.sh(320).toDouble(),
                      width: _config.sw(320).toDouble(),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            height: _config.sh(300).toDouble(),
                            width: _config.sw(300).toDouble(),
                            child: ClipRect(
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              child: BackdropFilter(
                                filter:
                                    ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white.withOpacity(0.6),
                                    shape: BoxShape.circle,
                                  ),
                                  height: _config.sh(300).toDouble(),
                                  width: _config.sw(300).toDouble(),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: _config.sh(260).toDouble(),
                            width: _config.sw(260).toDouble(),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                            ),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 30.0),
                              child: Image.asset(
                                'thin_crust_pizza'.toPng(),
                                height: _config.sh(320).toDouble(),
                                width: _config.sw(320).toDouble(),
                                fit: BoxFit.cover,
                              ),
                            ),
                          )
                        ],
                      )),
                  YMargin(40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: _config.sh(190).toDouble(),
                        width: SizeConfig.screenWidthDp,
                        child: Stack(children: [
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              height: _config.sh(190).toDouble(),
                              width: SizeConfig.screenWidthDp - 30,
                              child: ClipRect(
                                child: BackdropFilter(
                                  filter:
                                      ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                                  child: Container(
                                    height: _config.sh(200).toDouble(),
                                    width: SizeConfig.screenWidthDp - 30,
                                    decoration: BoxDecoration(
                                        color: Colors.white.withOpacity(0.6),
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: Column(
                                      children: [
                                        YMargin(20),
                                        RichText(
                                            text: TextSpan(
                                                text: 'Choose up to ',
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodyText1!
                                                    .copyWith(fontSize: 20),
                                                children: [
                                              TextSpan(
                                                text: '7 toppings',
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .headline1!
                                                    .copyWith(fontSize: 20),
                                              )
                                            ])),
                                        YMargin(5),
                                        TitleText(
                                            text: 'FREE 3 ADD-ONS',
                                            fontSize: 12,
                                            textColor: AppColors.textColor
                                                .withOpacity(0.8)),
                                        YMargin(20),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                              bottom: 30,
                              right: 0,
                              left: 0,
                              child: Container(
                                height: 90,
                                width: SizeConfig.screenWidthDp,
                                child: ListView.builder(
                                    padding: EdgeInsets.only(left: 30),
                                    scrollDirection: Axis.horizontal,
                                    itemCount: _listOfToppings.length,
                                    cacheExtent:
                                        _listOfToppings.length.toDouble(),
                                    itemBuilder:
                                        (BuildContext context, int position) {
                                      return ToppingItem(
                                          key: ObjectKey(
                                              _listOfToppings[position]),
                                          topping: _listOfToppings[position],
                                          onToppingSelected: (topping) {});
                                    }),
                              ))
                        ]),
                      ),
                    ],
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
                    radius: 0,
                    height: _config.sh(65).toDouble(),
                    width: SizeConfig.screenWidthDp,
                    onClick: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => ConfirmPizzaScreen()));
                    },
                    text: "Done"))
          ],
        ),
      ),
    );
  }
}
