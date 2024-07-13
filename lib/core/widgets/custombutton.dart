import 'package:flutter/material.dart';
import 'package:tes1/constant/constants.dart';
import 'package:tes1/core/utils/sizeconfig.dart';
import 'package:tes1/generated/l10n.dart';

class generalcustombutton extends StatelessWidget {
  const generalcustombutton(
      {super.key, required this.text, required this.onTap});
  final String text;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 60,
        width: Sizeconfig.screenWidth,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColors.primaryColor,
        ),
        child: Center(
            child: Text(
          text!,
          style: TextStyle(
              color: AppColors.backgroundColor,
              fontSize: FontSizes.large,
              fontWeight: FontWeight.bold),
        )),
      ),
    );
  }
}

class CustomButtonWithIcon extends StatelessWidget {
  const CustomButtonWithIcon(
      {super.key,
      required this.text,
      this.icon,
      this.onTap,
      required this.color,
      this.textcolor});
  final String? text;
  final IconData? icon;
  final VoidCallback? onTap;
  final Color? color;
  final Color? textcolor;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          height: 60,
          width: Sizeconfig.screenHeight,
          decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: AppColors.primaryColor)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                color: AppColors.primaryColor,
                size: 40,
              ),
              SizedBox(
                width: Sizeconfig.defaultSize! * 0.5,
              ),
              Text(
                text!,
                style: TextStyle(
                    color: textcolor,
                    fontSize: FontSizes.large,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.left,
              ),
            ],
          )),
    );
  }
}
