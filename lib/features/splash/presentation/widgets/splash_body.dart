import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/routes/default_transitions.dart';
import 'package:tes1/constant/constants.dart';
import 'package:tes1/core/utils/sizeconfig.dart';
import 'package:tes1/features/onPording/presentation/widgets/onpordingbody.dart';
import 'package:tes1/features/splash/presentation/splash_view.dart';
import 'package:tes1/generated/l10n.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> with SingleTickerProviderStateMixin {
  AnimationController?animationController;
  Animation<double> ? fadingAnimation;

void initState() {
  super.initState();
  animationController=AnimationController(
    vsync: this,
    duration: Duration(milliseconds: 1000),
  );
  fadingAnimation=Tween(begin: 0.1,end: 1.0).animate(animationController!);
  animationController!.repeat(reverse: true);

  goToNextView();
}
void dispose() {
  animationController?.dispose();

  super.dispose();
}
  @override
  Widget build(BuildContext context) {
    Sizeconfig().init(context);
    
    return Scaffold(
            backgroundColor:AppColors.primaryColor,

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Spacer(),
          FadeTransition(
            opacity: fadingAnimation!,
            child: Text(S.of(context).titleSplash,style: TextStyle(fontSize:FontSizes.extraLarge,color: AppColors.backgroundColor,fontWeight: FontWeight.bold,fontFamily: 'poppins'),)),
           Image.asset('assets/splash_view_image.png'),
        ],
      ),

    );
  }
  
  void goToNextView() {
    Future.delayed(Duration(seconds: 3), () {
      Get.offAll(() => onpordingviewbody(),transition: Transition.fade);
    });
  }
}