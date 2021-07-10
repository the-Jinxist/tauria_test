import 'package:flutter/material.dart';
import 'package:tauria_test/presentation/screens/choose_size_screen.dart';
import 'package:tauria_test/presentation/utils/colors.dart';
import 'package:tauria_test/presentation/utils/size_config.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Uncle Sam Pizza',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.white,
        accentColor: AppColors.redDark,
        textTheme: TextTheme(
          headline1: TextStyle(
            fontFamily: "Roboto",
            fontSize: 30,
            fontWeight: FontWeight.w700,
            color: AppColors.textColor,
          ),
          headline2: TextStyle(
            fontFamily: "Roboto",
            fontSize: 17,
            fontWeight: FontWeight.normal,
            color: AppColors.textColor,
          ),
          bodyText1: TextStyle(
            fontFamily: "Roboto",
            fontSize: 15,
            fontWeight: FontWeight.normal,
            color: AppColors.textColor,
          ),
          bodyText2: TextStyle(
            fontFamily: "Roboto",
            fontSize: 12,
            fontWeight: FontWeight.normal,
            color: AppColors.textColor,
          )
        ),
      ),
      home: Builder(builder: (BuildContext context) {

        final Size size = MediaQuery.of(context).size;
        SizeConfig.init(context,
            width: size.width, height: size.height, allowFontScaling: true);
        
        return ChooseSizeScreen();
      }),
    );
  }
}
