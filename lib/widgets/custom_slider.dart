import 'package:crypto_app/shared/theme.dart';
import 'package:flutter/material.dart';

class CustomSlider extends StatelessWidget {
  final String image;
  const CustomSlider({
    Key? key,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 340,
      width: 270,
      margin: const EdgeInsets.only(
        top: 40,
        right: 20,
      ),
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(28),
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 30,
            child: ElevatedButton(
              style: TextButton.styleFrom(
                backgroundColor: primaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(9),
                ),
              ),
              onPressed: () {},
              child: Text(
                'Trending',
                style: whiteTextStyle.copyWith(
                  fontWeight: medium,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 200,
          ),
          Expanded(
            child: Row(
              children: [
                SizedBox(
                  width: 176,
                  height: 40,
                  child: ElevatedButton(
                    style: TextButton.styleFrom(
                      backgroundColor: secondaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(45),
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      'Bid Now',
                      style: primaryTextStyle.copyWith(
                        fontWeight: medium,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 18,
                ),
                Image.asset(
                  'assets/icon_btn_wishlist.png',
                  height: 40,
                  width: 40,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
