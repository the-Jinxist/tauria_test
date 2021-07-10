import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tauria_test/presentation/reusables/button.dart';
import 'package:tauria_test/presentation/reusables/margin.dart';
import 'package:tauria_test/presentation/reusables/texts.dart';
import 'package:tauria_test/presentation/utils/colors.dart';
import 'package:tauria_test/presentation/utils/size_config.dart';
import 'package:tauria_test/domain/extensions.dart';

class OrderDetailsScreen extends StatefulWidget {
  const OrderDetailsScreen({Key? key}) : super(key: key);

  @override
  _OrderDetailsScreenState createState() => _OrderDetailsScreenState();
}

class _OrderDetailsScreenState extends State<OrderDetailsScreen> {
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
              height: _config.sh(350).toDouble(),
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
                  SvgPicture.asset('reciept_icon'.toSVG()),
                  NormalText(
                      text: 'Order Details',
                      textColor: Colors.white,
                      fontSize: 25),
                ],
              ),
            ),
            Column(
              children: [
                Container(
                    margin: EdgeInsets.only(top: 200, left: 15, right: 15),
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    height: _config.sh(550).toDouble(),
                    width: SizeConfig.screenWidthDp,
                    child: ClipRect(
                        child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                      child: Container(
                        height: _config.sh(550).toDouble(),
                        width: SizeConfig.screenWidthDp,
                        child: Column(children: [
                          YMargin(10),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 20.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(children: [
                                  TitleText(
                                    text: 'ORDERED ON',
                                    fontSize: 12,
                                  ),
                                  NormalText(
                                    text: '14 Feb',
                                    textColor: AppColors.redDark,
                                  ),
                                ]),
                                Column(children: [
                                  TitleText(
                                    text: 'INVOICE #',
                                    fontSize: 12,
                                  ),
                                  NormalText(
                                    text: '#15569',
                                    textColor: AppColors.redDark,
                                  ),
                                ]),
                                Column(children: [
                                  TitleText(
                                    text: 'TOTAL DUE',
                                    fontSize: 12,
                                  ),
                                  NormalText(
                                    text: '\$14.50',
                                    textColor: AppColors.redDark,
                                  ),
                                ]),
                              ],
                            ),
                          ),
                          YMargin(30),
                          Divider(),
                          YMargin(30),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 20.0),
                            child: Row(
                              children: [
                                Column(children: [
                                  Container(
                                    padding: EdgeInsets.all(2),
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border:
                                          Border.all(color: AppColors.redDark),
                                      gradient: LinearGradient(colors: [
                                        AppColors.redDark.withOpacity(0.5),
                                        AppColors.redLight.withOpacity(0.5)
                                      ], stops: [
                                        0.1,
                                        0.9
                                      ]),
                                    ),
                                    child: Center(
                                      child: Icon(Icons.check,
                                          color: AppColors.redDark),
                                    ),
                                  ),
                                  Container(
                                    height: _config.sh(100).toDouble(),
                                    width: 1,
                                    color: AppColors.redDark,
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(2),
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border:
                                          Border.all(color: AppColors.redDark),
                                      gradient: LinearGradient(colors: [
                                        AppColors.redDark.withOpacity(0.5),
                                        AppColors.redLight.withOpacity(0.5)
                                      ], stops: [
                                        0.1,
                                        0.9
                                      ]),
                                    ),
                                    child: Center(
                                        child: SvgPicture.asset(
                                            'preparing_icon'.toSVG())),
                                  ),
                                  Container(
                                      height: _config.sh(100).toDouble(),
                                      width: 1,
                                      color: AppColors.backgroundColor),
                                  Container(
                                    padding: EdgeInsets.all(2),
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: AppColors.backgroundColor,
                                      boxShadow: [
                                        BoxShadow(color: Colors.grey),
                                        BoxShadow(
                                            blurRadius: 12.0,
                                            spreadRadius: -12.0,
                                            color: AppColors.backgroundColor)
                                      ],
                                    ),
                                    child: Center(
                                        child: SvgPicture.asset(
                                            'bag_icon'.toSVG())),
                                  ),
                                  Container(
                                      height: _config.sh(100).toDouble(),
                                      width: 1,
                                      color: AppColors.backgroundColor),
                                  Container(
                                    padding: EdgeInsets.all(2),
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: AppColors.backgroundColor,
                                      boxShadow: [
                                        BoxShadow(color: Colors.grey),
                                        BoxShadow(
                                            blurRadius: 12.0,
                                            spreadRadius: -12.0,
                                            color: AppColors.backgroundColor)
                                      ],
                                    ),
                                    child: Center(
                                        child: SvgPicture.asset(
                                            'transit_icon'.toSVG())),
                                  ),
                                  Container(
                                      height: _config.sh(100).toDouble(),
                                      width: 1,
                                      color: AppColors.backgroundColor),
                                  Container(
                                    padding: EdgeInsets.all(2),
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: AppColors.backgroundColor,
                                      boxShadow: [
                                        BoxShadow(color: Colors.grey),
                                        BoxShadow(
                                            blurRadius: 12.0,
                                            spreadRadius: -12.0,
                                            color: AppColors.backgroundColor)
                                      ],
                                    ),
                                    child: Center(
                                        child: SvgPicture.asset(
                                            'delivered_icon'.toSVG())),
                                  ),
                                ]),
                                XMargin(20),
                                Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          NormalText(
                                            text: '11:41 AM',
                                            fontWeight: FontWeight.w500,
                                            fontSize: 12,
                                          ),
                                          NormalText(
                                            text: 'Order Confirmed',
                                            fontWeight: FontWeight.w500,
                                            fontSize: 17,
                                          ),
                                        ],
                                      ),
                                      YMargin(105),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          NormalText(
                                            text: '12:41 AM',
                                            fontWeight: FontWeight.w500,
                                            fontSize: 12,
                                          ),
                                          NormalText(
                                            text: 'Preparing...',
                                            fontWeight: FontWeight.w500,
                                            fontSize: 17,
                                          ),
                                        ],
                                      ),
                                      YMargin(105),
                                      NormalText(
                                        text: 'Dispatched',
                                      ),
                                      YMargin(105),
                                      NormalText(
                                        text: 'In Transit',
                                      ),
                                      YMargin(105),
                                      NormalText(
                                        text: 'Delivered',
                                      ),
                                    ]),
                              ],
                            ),
                          )
                        ]),
                      ),
                    ))),
                YMargin(20),
                Container(
                  height: _config.sh(120).toDouble(),
                  width: SizeConfig.screenWidthDp - 50,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                      color: AppColors.lightGreen.withOpacity(0.7),
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: AppColors.green)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              padding: EdgeInsets.all(2),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(color: AppColors.green),
                                color: AppColors.lightGreen.withOpacity(0.9),
                              ),
                              child: Center(
                                  child: SvgPicture.asset(
                                      'cash_back_icon'.toSVG())),
                            ),
                            XMargin(10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TitleText(text: 'Earned cashback!', fontSize: 17, textColor: AppColors.green,),
                                NormalText(text: '+\$1.45')
                              ]
                            )
                          ],
                        ),
                      ),
                      Container(
                          height: _config.sh(120).toDouble(),
                          width: _config.sw(60).toDouble(),
                          decoration: BoxDecoration(
                              color: AppColors.lightGreen,
                              border: Border(
                                  right: BorderSide(color: AppColors.green))),
                          child: Center(
                              child: Icon(
                            Icons.chevron_right_rounded,
                            size: 30,
                            color: AppColors.green,
                          )))
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
