import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 5), () {
      // Navigator.pushReplacement(
      //     context, MaterialPageRoute(builder: (context) =>  AuthSignInPage()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        // child: Image(
        //   image: AssetImage(signIn),
        //   height:120,
        //   width: double.infinity,
        //   fit: BoxFit.contain,
        // ),
        child: FlutterLogo(),
      ),
    );
  }
}
