import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tes1/constant/constants.dart';
import 'package:tes1/core/utils/sizeconfig.dart';
import 'package:tes1/core/widgets/custombutton.dart';
import 'package:tes1/core/widgets/space.dart';
import 'package:tes1/features/Auth/presentation/pages/copleateInformation/compleate_iformation_view.dart';
import 'package:tes1/generated/l10n.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                child: Image.asset(
                  'assets/logo.png',
                  width: Sizeconfig.screenWidth! * 0.8,
                  height: Sizeconfig.defaultSize! * 25,
                ),
              ),
            ],
          ),
          SizedBox(
            height: Sizeconfig.defaultSize! * 2,
          ),
          Text(S.of(context).titleSplash,
              style: TextStyle(
                fontSize: FontSizes.extraLarge,
                fontWeight: FontWeight.bold,
                fontFamily: 'poppins',
                color: AppColors.primaryColor,
              )),
          SizedBox(
            height: Sizeconfig.defaultSize! * 2,
          ),
          Row(
            children: [
              SizedBox(),
              Flexible(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CustomButtonWithIcon(
                      text: S.of(context).googlelogin,
                      color: Colors.transparent,
                      icon: Icons.mail,
                      onTap: () {
                        Get.to(() => compleate_iformation_view(),
                            duration: Duration(seconds: 1),
                            transition: Transition.rightToLeft);
                        print('object');
                      }),
                ),
              ),
              Flexible(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CustomButtonWithIcon(
                      text: S.of(context).facebooklogin,
                      color: Colors.transparent,
                      icon: Icons.facebook,
                      onTap: () {
                        Get.to(() => compleate_iformation_view(),
                            duration: Duration(seconds: 1),
                            transition: Transition.rightToLeft);
                      }),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
