import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tauria_test/presentation/reusables/button.dart';
import 'package:tauria_test/presentation/reusables/margin.dart';
import 'package:tauria_test/presentation/reusables/texts.dart';
import 'package:tauria_test/presentation/screens/order_details_screen.dart';
import 'package:tauria_test/presentation/utils/colors.dart';
import 'package:tauria_test/presentation/utils/size_config.dart';
import 'package:tauria_test/domain/extensions.dart';

class CheckoutScreen extends StatefulWidget {
  const CheckoutScreen({Key? key}) : super(key: key);

  @override
  _CheckoutScreenState createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  final SizeConfig _config = SizeConfig();

  bool _isSelected = false;

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
              height: _config.sh(190).toDouble(),
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
                  SvgPicture.asset('checkout_icon'.toSVG()),
                  NormalText(
                      text: 'Checkout', textColor: Colors.white, fontSize: 25),
                ],
              ),
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 120, left: 15, right: 15),
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    height: _config.sh(330).toDouble(),
                    width: SizeConfig.screenWidthDp - 25,
                    child: ClipRect(
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                        child: Container(
                          height: _config.sh(450).toDouble(),
                          width: SizeConfig.screenWidthDp - 25,
                          padding: EdgeInsets.symmetric(vertical: 30),
                          color: Colors.white.withOpacity(0.7),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 15.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            SvgPicture.asset(
                                                'location_icon'.toSVG()),
                                            XMargin(10),
                                            TitleText(
                                              text: 'Delivery Address',
                                              textColor: AppColors.redDark,
                                            ),
                                          ],
                                        ),
                                        Container(
                                          padding: EdgeInsets.all(7),
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            boxShadow: [
                                              BoxShadow(
                                                  blurRadius: 10,
                                                  spreadRadius: 3,
                                                  color: AppColors.redDark
                                                      .withOpacity(0.3))
                                            ],
                                            gradient: LinearGradient(colors: [
                                              AppColors.redDark,
                                              AppColors.redLight
                                            ], stops: [
                                              0.1,
                                              0.9
                                            ]),
                                          ),
                                          child: Center(
                                            child: SvgPicture.asset(
                                                'pencil_icon'.toSVG()),
                                          ),
                                        )
                                      ],
                                    ),
                                    YMargin(20),
                                    TitleText(
                                      text: 'Home',
                                      fontSize: 15,
                                    ),
                                    YMargin(2),
                                    NormalText(
                                      text: '3726 Brand Road, Swift Current',
                                      fontSize: 17,
                                    )
                                  ],
                                ),
                              ),
                              YMargin(20),
                              Divider(
                                color: AppColors.textColor,
                              ),
                              YMargin(20),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 15.0),
                                child: Row(children: [
                                  Icon(
                                    Icons.add,
                                    color: AppColors.textColor,
                                    size: 12,
                                  ),
                                  XMargin(5),
                                  TitleText(
                                    text: 'Add delivery instruction',
                                    fontSize: 15,
                                  ),
                                ]),
                              ),
                              YMargin(20),
                              Divider(
                                color: AppColors.textColor,
                              ),
                              YMargin(20),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 15.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          TitleText(
                                            text: 'Contactless Delivery:',
                                            fontSize: 15,
                                          ),
                                          YMargin(2),
                                          NormalText(
                                            text:
                                                'Rider will place order at your door',
                                            fontSize: 17,
                                          )
                                        ]),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          bottom: 10.0, left: 30),
                                      child: Transform.scale(
                                        scale: 0.7,
                                        child: CupertinoSwitch(
                                            value: _isSelected,
                                            activeColor: AppColors.redDark,
                                            
                                            onChanged: (value) {
                                              setState(() {
                                                _isSelected = value;
                                              });
                                            }),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      top: 20,
                    ),
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    height: _config.sh(210).toDouble(),
                    width: SizeConfig.screenWidthDp - 25,
                    child: ClipRect(
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                        child: Container(
                          height: _config.sh(210).toDouble(),
                          color: Colors.white.withOpacity(0.7),
                          padding: EdgeInsets.symmetric(
                              vertical: 40, horizontal: 20),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      SvgPicture.asset(
                                          'payment_method_icon'.toSVG()),
                                      XMargin(10),
                                      TitleText(
                                        text: 'Payment method',
                                        textColor: AppColors.redDark,
                                      ),
                                    ],
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(7),
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      boxShadow: [
                                        BoxShadow(
                                            blurRadius: 10,
                                            spreadRadius: 3,
                                            color: AppColors.redDark
                                                .withOpacity(0.3))
                                      ],
                                      gradient: LinearGradient(colors: [
                                        AppColors.redDark,
                                        AppColors.redLight
                                      ], stops: [
                                        0.1,
                                        0.9
                                      ]),
                                    ),
                                    child: Center(
                                      child: SvgPicture.asset(
                                          'pencil_icon'.toSVG()),
                                    ),
                                  )
                                ],
                              ),
                              YMargin(20),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        'visa_card'.toPng(),
                                        height: _config.sh(30).toDouble(),
                                      ),
                                      XMargin(3),
                                      Column(
                                        children: [
                                          TitleText(
                                            text: 'VISA',
                                            textColor: AppColors.textColor,
                                            fontSize: 12,
                                          ),
                                          NormalText(text: '...0145')
                                        ],
                                      ),
                                    ],
                                  ),
                                  TitleText(
                                    text: '\$14.50',
                                    fontSize: 15,
                                  )
                                ],
                              ),
                              YMargin(20),
                              Row(
                                children: [
                                  Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 20, vertical: 10),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: AppColors.lightGreen),
                                      child: TitleText(
                                        text: '10% CASHBACK APPLIED',
                                        fontSize: 12,
                                        textColor: AppColors.green,
                                      )),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  YMargin(100),
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
                    radius: 0.0,
                    onClick: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => OrderDetailsScreen()));
                    },
                    text: "Place Order"))
          ],
        ),
      ),
    );
  }
}
