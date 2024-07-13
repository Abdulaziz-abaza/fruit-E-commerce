import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:tes1/constant/constants.dart';
import 'package:tes1/core/utils/sizeconfig.dart';
import 'package:tes1/core/widgets/custombutton.dart';
import 'package:tes1/core/widgets/customdotindicator.dart';
import 'package:tes1/features/Auth/presentation/pages/login/loginview.dart';
import 'package:tes1/features/onPording/presentation/widgets/custompageview.dart';
import 'package:tes1/generated/l10n.dart';

class onpordingviewbody extends StatefulWidget {
  const onpordingviewbody({super.key});

  @override
  State<onpordingviewbody> createState() => _onpordingviewbodyState();
}

class _onpordingviewbodyState extends State<onpordingviewbody> {
  PageController? controller;

  @override
  void initState() {
    super.initState();
    controller = PageController(initialPage: 0)
      ..addListener(() {
        setState(() {});
      });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          CustomPageView(
            controller: controller!,
          ),
          Customdotindicator(
            // dotIndex:  controller!.page!.round(),
            dotIndex: controller!.hasClients ? controller!.page!.round() : 0,
          ),
          Positioned(
              top: Sizeconfig.defaultSize! * 10,
              right: 32,
              child: Visibility(
                visible: controller!.hasClients
                    ? (controller!.page == 2 ? false : true)
                    : true,
                child: TextButton(
                    onPressed: () {
                      Get.to(() => loginView(),
                          transition: Transition.leftToRightWithFade);
                      print("nexddddddt");

                      print("skip");
                    },
                    child: Text(S.of(context).skip)),
              )),
          Positioned(
              bottom: Sizeconfig.defaultSize! * 10,
              left: Sizeconfig.defaultSize! * 10,
              right: Sizeconfig.defaultSize! * 10,
              child: generalcustombutton(
                onTap: () {
                  print('ddddddd');
                  if (controller!.page! < 2) {
                    controller!.nextPage(
                        duration: Duration(milliseconds: 500),
                        curve: Curves.ease);
                    print("next");
                  } else {
                    Get.to(() => loginView(),
                        transition: Transition.leftToRightWithFade);
                    print("nexddddddt");
                  }
                },
                text: controller!.hasClients
                    ? (controller!.page == 2
                        ? S.of(context).getStarted
                        : S.of(context).next)
                    : S.of(context).next,
              )),
        ],
      ),
    );
  }
}
