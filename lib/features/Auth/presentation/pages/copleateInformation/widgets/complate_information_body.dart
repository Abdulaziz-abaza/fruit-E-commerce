import 'package:flutter/material.dart';
import 'package:tes1/core/utils/sizeconfig.dart';
import 'package:tes1/core/widgets/custom_text_field.dart';
import 'package:tes1/core/widgets/custombutton.dart';
import 'package:tes1/features/Auth/presentation/pages/copleateInformation/widgets/complate_information_item.dart';
import 'package:tes1/generated/l10n.dart';

class compleate_iformation_body extends StatelessWidget {
  const compleate_iformation_body({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(
              height: Sizeconfig.defaultSize! * 5,
            ),
            compleate_iformation_item(text: S.of(context).enteryourname),
            SizedBox(
              height: Sizeconfig.defaultSize! * 2,
            ),
            compleate_iformation_item(text: S.of(context).enteryourphone),
            SizedBox(
              height: Sizeconfig.defaultSize! * 2,
            ),
            compleate_iformation_item(
                maxLines: 5, text: S.of(context).enteryouraddress),
            SizedBox(
              height: Sizeconfig.defaultSize! * 5,
            ),
            generalcustombutton(text: S.of(context).login, onTap: () {}),
          ],
        ),
      ),
    );
  }
}
