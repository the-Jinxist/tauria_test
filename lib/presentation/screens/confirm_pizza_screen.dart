import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tauria_test/presentation/reusables/button.dart';
import 'package:tauria_test/presentation/reusables/margin.dart';
import 'package:tauria_test/presentation/reusables/texts.dart';
import 'package:tauria_test/presentation/screens/checkout_screen.dart';
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
              height: _config.sh(150).toDouble(),
              width: SizeConfig.screenWidthDp,
              padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [AppColors.redDark, AppColors.redLight],
                    stops: [0.1, 0.9]),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SvgPicture.asset('pizza_icon'.toSVG(),
                      height: _config.sh(25).toDouble()),
                  YMargin(7),
                  NormalText(
                      text: 'Check your',
                      textColor: Colors.white,
                      fontSize: 20),
                  YMargin(2),
                  TitleText(
                      text: 'custom pizza',
                      textColor: Colors.white,
                      fontSize: 20)
                ],
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Container(
                margin: EdgeInsets.only(top: 100),
                height: _config.sh(400).toDouble(),
                width: _config.sw(200).toDouble(),
                child: Stack(
                  alignment: Alignment.centerRight,
                  children: [
                    Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                        height: _config.sh(400).toDouble(),
                        width: _config.sw(200).toDouble(),
                        child: Column(children: [
                          Container(
                            height: _config.sh(200).toDouble(),
                            width: _config.sw(200).toDouble(),
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(
                                        _config.sw(200).toDouble()))),
                            child: ClipRect(
                              child: BackdropFilter(
                                filter:
                                    ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white.withOpacity(0.6),
                                  ),
                                  height: _config.sh(200).toDouble(),
                                  width: _config.sw(200).toDouble(),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: _config.sh(200).toDouble(),
                            width: _config.sw(200).toDouble(),
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(
                                        _config.sh(200).toDouble()))),
                            child: ClipRect(
                              child: BackdropFilter(
                                filter:
                                    ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white.withOpacity(0.6),
                                  ),
                                  height: _config.sh(200).toDouble(),
                                  width: _config.sw(200).toDouble(),
                                ),
                              ),
                            ),
                          ),
                        ]),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                        height: _config.sh(380).toDouble(),
                        width: _config.sw(190).toDouble(),
                        child: Column(children: [
                          Container(
                            height: _config.sh(190).toDouble(),
                            width: _config.sw(190).toDouble(),
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(
                                        _config.sh(190).toDouble()))),
                          ),
                          Container(
                            height: _config.sh(190).toDouble(),
                            width: _config.sw(190).toDouble(),
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(
                                        _config.sh(190).toDouble()))),
                          ),
                        ]),
                      ),
                    ),
                    Positioned(
                        top: 20,
                        bottom: 20,
                        right: 1,
                        left: 0,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 20.0),
                          child: Image.asset(
                            'half_pizza'.toPng(),
                            fit: BoxFit.cover,
                            scale: 0.2,
                          ),
                        ))
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                  margin: EdgeInsets.only(top: 230),
                  height: _config.sh(380).toDouble(),
                  width: _config.sw(220).toDouble(),
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20.0),
                      bottomRight: Radius.circular(20.0),
                    ),
                  ),
                  child: ClipRect(
                      child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 7, sigmaY: 7),
                          child: Container(
                            height: _config.sh(430).toDouble(),
                            color: Colors.white.withOpacity(0.7),
                            padding: EdgeInsets.symmetric(vertical: 30),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                YMargin(20),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 15.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SvgPicture.asset(
                                        'checkout_icon'.toSVG(),
                                        height: _config.sh(15).toDouble(),
                                        width: _config.sw(15).toDouble(),
                                        color: AppColors.redDark,
                                      ),
                                      YMargin(5),
                                      TitleText(
                                          text: 'ORDER SUMMARY',
                                          fontSize: 12,
                                          textColor: AppColors.redDark),
                                      YMargin(20),
                                    ],
                                  ),
                                ),
                                Divider(
                                  color: AppColors.textColor,
                                ),
                                YMargin(20),
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
                                YMargin(20),
                                Divider(color: AppColors.textColor),
                                YMargin(20),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 15.0),
                                  child: Row(
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
                                      ]),
                                )
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
                    onClick: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => CheckoutScreen()));
                    },
                    text: "Confirm Pizza"))
          ],
        ),
      ),
    );
  }
}
