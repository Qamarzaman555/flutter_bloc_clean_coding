import 'package:flutter/material.dart';

import '../../services/splash/splash_services.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  SplashServices splashServices = SplashServices();
  @override
  void initState() {
    super.initState();

    splashServices.isLogin(context);
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Center(
            child: SizedBox(
      height: 20,
      width: 100,
      child: Text('Splash Screen'),
    )));
  }
}
