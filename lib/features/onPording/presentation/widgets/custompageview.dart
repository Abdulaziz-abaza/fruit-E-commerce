import 'package:flutter/material.dart';
import 'package:tes1/constant/constants.dart';
import 'package:tes1/core/utils/sizeconfig.dart';
import 'package:tes1/features/onPording/presentation/widgets/pageviewitem.dart';
import 'package:tes1/generated/l10n.dart';

class CustomPageView extends StatelessWidget {
  const CustomPageView({super.key, required this.controller});
final  PageController controller;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      PageView(
         controller: controller,
        // scrollDirection: Axis.vertical,
        children: [  
         PageViewItem(
           title: S.of(context).title1,
           subtitle: S.of(context).subtitle,
           image: 'assets/onboarding1.png',
         ),
         PageViewItem(
           title: S.of(context).title2,
           subtitle: S.of(context).subtitle,
           image: 'assets/onboarding2.png',
         ),
         PageViewItem(
           title: S.of(context).title3,
           subtitle: S.of(context).subtitle3,
           image: 'assets/onboarding3.png',
         ),

        ],
      ),
    );
  }
}