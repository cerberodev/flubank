import 'package:flubank/core/api/mock/splash_data.dart';
import 'package:flubank/ui/shared/constants.dart';
import 'package:flutter/material.dart';

import '../../../widgets/default_button.dart';
import '../../login/login_screen.dart';
import 'splash_content.dart';

class SplashScreenBody extends StatefulWidget {
  SplashScreenBody({Key key}) : super(key: key);

  @override
  _SplashScreenBodyState createState() => _SplashScreenBodyState();
}

class _SplashScreenBodyState extends State<SplashScreenBody> {
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 3,
          child: PageView.builder(
            itemCount: splashData.length,
            itemBuilder: (context, index) => SplashContent(
              text: splashData[index]['text'],
              image: splashData[index]['image'],
            ),
            onPageChanged: (value) {
              setState(() {
                currentPage = value;
              });
            },
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
            child: Column(
              children: [
                Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    splashData.length,
                    (index) => _buildDot(index: index),
                  ),
                ),
                Spacer(),
                AppDefaulButton(
                  onTap: () =>
                      Navigator.pushNamed(context, LoginScreen.routeName),
                  text: 'Continuar',
                )
              ],
            ),
          ),
        )
      ],
    );
  }

  AnimatedContainer _buildDot({int index}) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 5000),
      child: Container(
        margin: EdgeInsets.only(right: 5),
        height: 6,
        width: currentPage == index ? 20 : 6,
        decoration: BoxDecoration(
          color: currentPage == index ? AppColors.mainColor : Colors.grey,
          borderRadius: BorderRadius.circular(3),
        ),
      ),
    );
  }
}
