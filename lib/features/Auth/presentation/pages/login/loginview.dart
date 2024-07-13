import 'package:flutter/material.dart';
import 'package:tes1/features/Auth/presentation/pages/login/widgets/loginviewbody.dart';

class loginView extends StatelessWidget {
  const loginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:LoginViewBody(),
    );
  }
}