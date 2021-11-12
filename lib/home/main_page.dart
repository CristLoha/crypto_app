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
          color: Colors.red,
          decoration: BoxDecoration(),
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
