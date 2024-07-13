import 'package:flutter/material.dart';
import 'package:tes1/core/utils/sizeconfig.dart';

class HorizintalSpace extends StatelessWidget {
  const HorizintalSpace(this.value);
final double ?value ;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Sizeconfig.defaultSize!* value!,
    );
  }
}



class VerticalSpace extends StatelessWidget {
  const VerticalSpace(this.value);
final double ?value ;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Sizeconfig.defaultSize!* value!,
    );
  }
}