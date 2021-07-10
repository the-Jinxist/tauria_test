import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tauria_test/presentation/reusables/button.dart';
import 'package:tauria_test/presentation/reusables/margin.dart';
import 'package:tauria_test/presentation/reusables/selector.dart';
import 'package:tauria_test/presentation/reusables/texts.dart';
import 'package:tauria_test/presentation/utils/colors.dart';
import 'package:tauria_test/presentation/utils/size_config.dart';
import 'package:tauria_test/domain/extensions.dart';

class ChooseSizeScreen extends StatefulWidget {
  const ChooseSizeScreen({Key? key}) : super(key: key);

  @override
  _ChooseSizeScreenState createState() => _ChooseSizeScreenState();
}

class _ChooseSizeScreenState extends State<ChooseSizeScreen> {
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
            SizedBox(
              height: _config.sh(500).toDouble(),
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Container(
                    width: SizeConfig.screenWidthDp + 200,
                    margin: EdgeInsets.only(top: 10),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                            color: AppColors.textColor.withOpacity(0.5),
                            width: 1)),
                  ),
                  Container(
                      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      margin:
                          EdgeInsets.only(bottom: _config.sh(55).toDouble()),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color(0xFCCCCCCC)),
                      child: TitleText(
                        text: '12\"',
                        fontSize: 10,
                        textColor: AppColors.textColor,
                      )),
                ],
              ),
            ),
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
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
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
                            TitleText(
                              text: 'SIZE, CRUST, TOPPINGS',
                              fontSize: 13,
                              textColor: Colors.white.withOpacity(0.7),
                            )
                          ],
                        ),
                        TitleText(
                          text: '\$10.00',
                          fontSize: 22,
                          textColor: Colors.white,
                        )
                      ],
                    ),
                  ),
                  YMargin(20),
                  SizedBox(
                      height: _config.sh(290).toDouble(),
                      width: _config.sw(290).toDouble(),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            height: _config.sh(280).toDouble(),
                            width: _config.sw(280).toDouble(),
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
                                  height: _config.sh(280).toDouble(),
                                  width: _config.sw(280).toDouble(),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: _config.sh(250).toDouble(),
                            width: _config.sw(250).toDouble(),
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
                                'large_size_pizza'.toPng(),
                                fit: BoxFit.cover,
                              ),
                            ),
                          )
                        ],
                      )),
                  YMargin(120),
                  Container(
                    height: _config.sh(140).toDouble(),
                    width: SizeConfig.screenWidthDp - 30,
                    child: ClipRect(
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                        child: Container(
                          height: _config.sh(140).toDouble(),
                          width: SizeConfig.screenWidthDp - 30,
                          decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.6),
                              borderRadius: BorderRadius.circular(20)),
                          child: Column(
                            children: [
                              YMargin(20),
                              RichText(
                                  text: TextSpan(
                                      text: 'Choose your ',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyText1!
                                          .copyWith(fontSize: 20),
                                      children: [
                                    TextSpan(
                                      text: 'size',
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline1!
                                          .copyWith(fontSize: 20),
                                    )
                                  ])),
                              YMargin(20),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                                child: Selector(["Small", "Medium", "Large"],
                                    (String selectedOption) {}),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
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
                    onClick: () {},
                    text: "Next"))
          ],
        ),
      ),
    );
  }
}
