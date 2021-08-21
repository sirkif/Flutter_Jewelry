import 'package:flutter/material.dart';
import 'package:flutter_jewelry/widgets/gradient_button.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Color(0xfff1cbd4), Color(0xfff2cfd9), Color(0xfff3ccd5)],
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 80),
                child: Image.asset(
                  'assets/jewelry.png',
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, bottom: 30),
                child: CurveBackground(),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CurveBackground extends StatelessWidget {
  const CurveBackground({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'assets/shape_curve.png',
          fit: BoxFit.cover,
        ),
        Column(
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.only(top: 60),
              child: Text(
                "The best jewelry in \n The Town Now!",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xff6a505d),
                  fontSize: 28,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Text(
                "We Use 100% pure Metals",
                style: TextStyle(
                  color: Color(0xff9b97b6),
                  fontSize: 14,
                ),
              ),
            )
          ],
        ),
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          bottom: 12,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: GradientButton(),
          ),
        ),
      ],
    );
  }
}
