import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tauria_test/presentation/reusables/button.dart';
import 'package:tauria_test/presentation/reusables/margin.dart';
import 'package:tauria_test/presentation/reusables/texts.dart';
import 'package:tauria_test/presentation/utils/colors.dart';
import 'package:tauria_test/presentation/utils/size_config.dart';
import 'package:tauria_test/domain/extensions.dart';

class ConfirmPizzaScreen extends StatefulWidget {
  const ConfirmPizzaScreen({Key? key}) : super(key: key);

  @override
  _ConfirmPizzaScreenState createState() => _ConfirmPizzaScreenState();
}

class _ConfirmPizzaScreenState extends State<ConfirmPizzaScreen> {
  final SizeConfig _config = SizeConfig();

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
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [AppColors.redDark, AppColors.redLight],
                    stops: [0.1, 0.9]),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SvgPicture.asset('pizza_icon'.toSVG()),
                  NormalText(
                      text: 'Check your',
                      textColor: Colors.white,
                      fontSize: 25),
                  YMargin(2),
                  TitleText(
                      text: 'custom pizza',
                      textColor: Colors.white,
                      fontSize: 25)
                ],
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Container(
                margin: EdgeInsets.only(top: 100),
                height: _config.sh(500).toDouble(),
                width: _config.sw(300).toDouble(),
                child: Stack(
                  children: [
                    Column(children: [
                      Container(
                        height: _config.sh(250).toDouble(),
                        width: _config.sw(300).toDouble(),
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(
                                    _config.sh(250).toDouble()))),
                        child: ClipRect(
                          child: BackdropFilter(
                            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.6),
                              ),
                              height: _config.sh(250).toDouble(),
                              width: _config.sw(300).toDouble(),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: _config.sh(250).toDouble(),
                        width: _config.sw(300).toDouble(),
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(
                                    _config.sh(250).toDouble()))),
                        child: ClipRect(
                          child: BackdropFilter(
                            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.6),
                              ),
                              height: _config.sh(250).toDouble(),
                              width: _config.sw(300).toDouble(),
                            ),
                          ),
                        ),
                      ),
                    ]),
                    Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: _config.sh(220).toDouble(),
                            width: _config.sw(300).toDouble(),
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(
                                        _config.sh(250).toDouble()))),
                          ),
                          Container(
                            height: _config.sh(220).toDouble(),
                            width: _config.sw(300).toDouble(),
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(
                                        _config.sh(250).toDouble()))),
                          ),
                        ]),
                    Align(
                        alignment: Alignment.centerRight,
                        child: Image.asset(
                          'half_pizza'.toPng(),
                          height: _config.sh(400).toDouble(),
                          width: _config.sw(300).toDouble(),
                        ))
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                  margin: EdgeInsets.only(top: 300),
                  height: _config.sh(430).toDouble(),
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10.0),
                      bottomRight: Radius.circular(10.0),
                    ),
                  ),
                  child: ClipRect(
                      child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                          child: Container(
                            height: _config.sh(430).toDouble(),
                            color: Colors.white.withOpacity(0.7),
                            padding: EdgeInsets.symmetric(vertical: 30),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 15.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SvgPicture.asset('checkout_icon'.toSVG(),
                                          height: _config.sh(20).toDouble(),
                                          width: _config.sw(20).toDouble()),
                                      TitleText(
                                          text: 'ORDER SUMMARY',
                                          fontSize: 10,
                                          textColor: AppColors.redDark),
                                      YMargin(30),
                                    ],
                                  ),
                                ),
                                Divider(
                                  color: AppColors.backgroundColor,
                                ),
                                YMargin(30),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 15.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            NormalText(
                                              text: 'Medium Size',
                                              fontWeight: FontWeight.w500,
                                            ),
                                            TitleText(
                                              text: '\$14.50',
                                              fontSize: 12,
                                            ),
                                          ]),
                                          YMargin(3),
                                           Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            NormalText(
                                              text: 'Thick Crust',
                                              fontWeight: FontWeight.w500,
                                            ),
                                            TitleText(
                                              text: '\$14.50',
                                              fontSize: 12,
                                            ),
                                          ]),
                                          YMargin(3),
                                           Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            NormalText(
                                              text: 'Pepperoni',
                                              fontWeight: FontWeight.w500,
                                            ),
                                            TitleText(
                                              text: '\$14.50',
                                              fontSize: 12,
                                            ),
                                          ]),
                                          YMargin(3),
                                           Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            NormalText(
                                              text: 'Black Olives',
                                              fontWeight: FontWeight.w500,
                                            ),
                                            TitleText(
                                              text: '\$14.50',
                                              fontSize: 12,
                                            ),
                                          ]),
                                          YMargin(3),
                                           Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            NormalText(
                                              text: 'Mushroom',
                                              fontWeight: FontWeight.w500,
                                            ),
                                            TitleText(
                                              text: '\$14.50',
                                              fontSize: 12,
                                            ),
                                          ]),
                                          YMargin(3),
                                           Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            NormalText(
                                              text: 'Onions',
                                              fontWeight: FontWeight.w500,
                                            ),
                                            TitleText(
                                              text: '\$14.50',
                                              fontSize: 12,
                                            ),
                                          ]),
                                    ],
                                  ),
                                ),
                                YMargin(30),
                                Divider(
                                  color: AppColors.backgroundColor,
                                ),
                                YMargin(30),
                                Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      NormalText(
                                        text: 'Total',
                                        fontWeight: FontWeight.w500,
                                      ),
                                      NormalText(
                                        text: '\$14.50',
                                        fontSize: 27,
                                      ),
                                    ])
                              ],
                            ),
                          )))),
            ),
            Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: XButton(
                    height: _config.sh(65).toDouble(),
                    width: SizeConfig.screenWidthDp,
                    onClick: () {},
                    text: "Confirm Pizza"))
          ],
        ),
      ),
    );
  }
}
