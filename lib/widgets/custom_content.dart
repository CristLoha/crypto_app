import 'package:crypto_app/shared/theme.dart';
import 'package:flutter/material.dart';

class CustomContent extends StatelessWidget {
  final String image;
  final String title;
  final String date;
  final String price;
  const CustomContent({
    Key? key,
    required this.image,
    required this.title,
    required this.date,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            image: DecorationImage(
              image: AssetImage(
                image,
              ),
            ),
          ),
        ),
        const SizedBox(
          width: 12,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: primaryTextStyle.copyWith(
                  fontWeight: medium,
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              Text(
                date,
                style: secondaryTextStyle.copyWith(
                  fontWeight: medium,
                ),
              ),
            ],
          ),
        ),
        Row(
          children: [
            Container(
              width: defaultMargin,
              height: defaultMargin,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('assets/icon_bitcoin.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              width: 5,
            ),
            Text(
              price,
              style: primaryTextStyle.copyWith(
                fontWeight: medium,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
