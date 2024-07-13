import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tes1/features/splash/presentation/splash_view.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:tes1/generated/l10n.dart';

void main() {
  runApp(const fruitMarket());
}
class fruitMarket extends StatelessWidget {
  const fruitMarket({super.key});

  @override
  
  Widget build(BuildContext context) {
    return GetMaterialApp(
      locale: Locale('en'),
       supportedLocales: S.delegate.supportedLocales,
       localizationsDelegates: [
                S.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
            ],
home: SplashView(),

    );

  }
}