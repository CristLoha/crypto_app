import 'package:crypto_app/shared/theme.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget customBottomNavigation() {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: double.infinity,
          height: 60,
          margin: EdgeInsets.only(
            bottom: 30,
            left: defaultMargin,
            right: defaultMargin,
          ),
          decoration: BoxDecoration(
            color: primaryColor,
            borderRadius: BorderRadius.circular(17),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconBottomNavigation(
                image: 'assets/icon_profile.png',
              ),
              IconBottomNavigation(
                image: 'assets/icon_news.png',
              ),
              IconBottomNavigation(
                image: 'assets/icon_dashboard.png',
              ),
              IconBottomNavigation(
                image: 'assets/icon_collection.png',
              ),
              IconBottomNavigation(
                image: 'assets/icon_help.png',
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      body: Stack(
        children: [
          Text(
            'Main Page',
          ),
          customBottomNavigation(),
        ],
      ),
    );
  }
}

class IconBottomNavigation extends StatelessWidget {
  final String image;
  const IconBottomNavigation({
    Key? key,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 16,
        ),
        Container(
          width: 24,
          height: 24,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                image,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
