// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:testing_aplikasi/onboard/onboard1.dart';
import 'dart:async';
// import 'package:testing_aplikasi/views/login01.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );

    _animation = Tween<double>(begin: 10, end:200 ).animate(_controller)
      ..addListener(() {
        setState(() {});
      });

    _controller.forward().then((value) {
      Timer(const Duration(seconds: 2), () {
        Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => const Onboarding(),
        ));
      });
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  const Color (0XFFF05A7E),
      body: Center(
        child: Container(
          width: _animation.value,
          height: _animation.value,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage('assets/images/sierra.png'), 
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}

