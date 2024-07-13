import 'package:flutter/material.dart';
import 'package:tes1/features/Auth/presentation/pages/copleateInformation/widgets/complate_information_body.dart';
import 'package:tes1/features/Auth/presentation/pages/copleateInformation/widgets/complate_information_item.dart';

class compleate_iformation_view extends StatelessWidget {
  const compleate_iformation_view({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: compleate_iformation_body(),
    );
  }
}
