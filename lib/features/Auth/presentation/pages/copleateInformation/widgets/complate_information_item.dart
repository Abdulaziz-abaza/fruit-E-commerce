import 'package:flutter/material.dart';
import 'package:tes1/constant/constants.dart';
import 'package:tes1/core/utils/sizeconfig.dart';
import 'package:tes1/core/widgets/custom_text_field.dart';

class compleate_iformation_item extends StatelessWidget {
  const compleate_iformation_item(
      {super.key, required this.text, this.inputType, this.maxLines});
  final String text;
  final TextInputType? inputType;
  final int? maxLines;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: TextStyle(
            fontFamily: 'poppins',
            fontSize: FontSizes.large,
            fontWeight: FontWeight.bold,
            color: AppColors.textColor,
            height: 1.5,
          ),
          textHeightBehavior: TextHeightBehavior(
            applyHeightToFirstAscent: false,
          ),
          // textDirection: TextDirection.ltr,
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: Sizeconfig.defaultSize! * 2,
        ),
        CustomTextFormField(
          inputType: inputType,
          maxLines: maxLines,
          onSaved: (value) {},
          onChanged: (value) {},
        ),
      ],
    );
  }
}
