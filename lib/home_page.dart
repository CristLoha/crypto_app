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
          viewportFraction: 0.7,
          autoPlay: false,
          scrollDirection: Axis.horizontal,
          enlargeCenterPage: true,
          height: 380.0,
        ),
        items: [
          const CustomSlider(image: 'assets/c_images1.png'),
          const CustomSlider(image: 'assets/c_images2.png'),
          const CustomSlider(image: 'assets/c_images3.png'),
        ],
      );
    }

    Widget popularTitle() {
      return Container(
        margin: EdgeInsets.only(
          top: 50,
          left: defaultMargin,
        ),
        child: Text(
          'Popular Creators',
          style: primaryTextStyle.copyWith(
            fontSize: 16,
            fontWeight: medium,
          ),
        ),
      );
    }

    Widget imageUser() {
      return Container(
        margin: const EdgeInsets.only(
          top: 16,
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SizedBox(width: defaultMargin),
              const CustomUserImage(image: 'assets/user1.png'),
              const SizedBox(width: 12),
              const CustomUserImage(image: 'assets/user2.png'),
              const SizedBox(width: 12),
              const CustomUserImage(image: 'assets/user3.png'),
              const SizedBox(width: 12),
              const CustomUserImage(image: 'assets/user4.png'),
              const SizedBox(width: 12),
              const CustomUserImage(image: 'assets/user5.png'),
              const SizedBox(width: 12),
              const CustomUserImage(image: 'assets/user6.png'),
              const SizedBox(width: 12),
              const CustomUserImage(image: 'assets/user5.png'),
              SizedBox(width: defaultMargin),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: ListView(
        children: [
          header(),
          contentSlider(),
          popularTitle(),
          imageUser(),
        ],
      ),
    );
  }
}

class CustomUserImage extends StatelessWidget {
  final String image;
  const CustomUserImage({
    Key? key,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 55,
      height: 55,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
