import 'dart:async';
import 'package:arabic_english_app/views/mobile_body.dart';
import 'package:flutter/material.dart';

void main()async {
  runApp(const SplashScreen());
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    startTime();
  }

  startTime() async {
    var duracion = const Duration(seconds: 2);
    // ignore: unnecessary_new
    return new Timer(duracion, route);
  }

  route() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => const MyMobileBody()));
  }

  @override
  Widget build(BuildContext context) {
    return initWidget(context);
  }

  Widget initWidget(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
                color: Color.fromARGB(255, 255, 255, 255),
                gradient: LinearGradient(
                  colors: [
                    (Color.fromARGB(255, 255, 255, 255)),
                    (Color.fromARGB(255, 255, 255, 255))
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                )),
          ),
          Center(
            child: Container(
                width: 300,
                height: 300,
                child: Image.asset(
                  "assets/images/bg-logo.d08d260d.png",
                  fit: BoxFit.cover,
                )),
          )
        ],
      ),
    );
  }
}
