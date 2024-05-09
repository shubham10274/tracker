import 'package:flutter/material.dart';
import 'package:weight_track/size_config/size_config.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SplashScreen(),
    );
  }
}
