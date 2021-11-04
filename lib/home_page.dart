import 'package:carousel_slider/carousel_slider.dart';
import 'package:crypto_app/shared/theme.dart';
import 'package:flutter/material.dart';

import 'widgets/custom_slider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: defaultMargin),
        margin: const EdgeInsets.only(top: 40),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'SeaSell',
                    style: primaryTextStyle.copyWith(
                      fontSize: 24,
                      fontWeight: medium,
                    ),
                  ),
                  Text(
                    'Find Your NFTs Today',
                    style: secondaryTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: light,
                    ),
                  ),
                ],
              ),
            ),
            InkWell(
              onTap: () {},
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                'assets/h_icon2.png',
                width: 24,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 8),
            InkWell(
              onTap: () {},
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                'assets/h_icon1.png',
                width: 24,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      );
    }

    Widget contentSlider() {
      return CarouselSlider(
        options: CarouselOptions(
          aspectRatio: 16 / 9,
          enableInfiniteScroll: true,
          autoPlayCurve: Curves.fastOutSlowIn,
          autoPlayAnimationDuration: const Duration(milliseconds: 800),
          viewportFraction: 0.8,
          autoPlay: true,
          height: 340.0,
        ),
        items: [
          CustomSlider(),
        ],
      );
    }

    return Scaffold(
      body: ListView(
        children: [
          header(),
          contentSlider(),
        ],
      ),
    );
  }
}
