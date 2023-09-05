import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AppLogo extends StatelessWidget {
  double width;
  double height;
   AppLogo({super.key, this.height = 50, this.width = 50});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: SvgPicture.asset('assets/logo.svg', height: height,width: width,),
    );
  }
}
