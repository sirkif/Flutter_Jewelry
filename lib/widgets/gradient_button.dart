import 'package:flutter/material.dart';

class GradientButton extends StatelessWidget {
  const GradientButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Transform.rotate(
          angle: 0.8,
          child: Container(
            width: 56,
            height: 56,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [Color(0xffffad87), Color(0xff8f93ea)],
                )),
          ),
        ),
        Transform.rotate(
          angle: 0.8,
          child: Container(
            width: 53,
            height: 53,
            decoration: BoxDecoration(
              color: Color(0xfff9e5ea),
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),
        Transform.rotate(
          angle: 0.8,
          child: Container(
            width: 46,
            height: 46,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Color(0x386c60f2),
                    blurRadius: 23,
                    offset: Offset(0, 8),
                  ),
                ],
                gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [Color(0xffffad87), Color(0xff8f93ea)],
                )),
          ),
        ),
        GestureDetector(
          onTap: () => Navigator.pushReplacementNamed(context, "home"),
          child: Icon(
            Icons.arrow_right_alt_outlined,
            color: Colors.white,
            size: 35,
          ),
        )
      ],
    );
  }
}
