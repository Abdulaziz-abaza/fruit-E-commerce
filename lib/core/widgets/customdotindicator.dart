import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:tes1/constant/constants.dart';
import 'package:tes1/core/utils/sizeconfig.dart';

class Customdotindicator extends StatelessWidget {
  const Customdotindicator({super.key, required this.dotIndex});
  final int dotIndex;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 0,
      right: 0,
      bottom: Sizeconfig.defaultSize! * 25,
      child: DotsIndicator(
        decorator: DotsDecorator(
            activeColor: AppColors.primaryColor,
            color: Colors.transparent,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
                side: BorderSide(color: AppColors.primaryColor))),
        dotsCount: 3,
        //  position:0,
        //  position: dotIndex,
        position: dotIndex,
      ),
    );
  }
}
