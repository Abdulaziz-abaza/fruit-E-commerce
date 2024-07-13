import 'package:flutter/material.dart';
import 'package:tes1/constant/constants.dart';
import 'package:tes1/core/utils/sizeconfig.dart';
import 'package:tes1/core/widgets/space.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem({super.key, this.title, this.subtitle, this.image});
final String? title;
final String? subtitle;
final String? image;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // VerticalSpace(22),
        SizedBox(height: Sizeconfig.defaultSize!*22,),
     SizedBox(
      height: Sizeconfig.defaultSize!*20,
      child: Image.asset(image!)),
         SizedBox(height: Sizeconfig.defaultSize!*5,),

      Text(title!,style: TextStyle(color: AppColors.textColor,fontWeight: FontWeight.bold,fontSize: FontSizes.large),),
               SizedBox(height: Sizeconfig.defaultSize!*2,),

      Text(subtitle!,style: TextStyle(color: AppColors.textColor,fontWeight: FontWeight.bold,fontSize: FontSizes.medium),),
      ],
    );
  }
}