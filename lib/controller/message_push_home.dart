import 'dart:async';
import 'package:arabic_english_app/views/mobile_body.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MessagePushHome());
}

class MessagePushHome extends StatefulWidget {
  const MessagePushHome({super.key});

  @override
  State<MessagePushHome> createState() => _MessagePushHomeState();
}

class _MessagePushHomeState extends State<MessagePushHome> {
  @override
  void initState() {
    super.initState();
    startTime();
  }

  startTime() async {
    var duracion = const Duration(seconds: 4);
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
                height: 600,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset(
                      "assets/images/bg-logo.d08d260d.png",
                      fit: BoxFit.cover,
                    ),
                    // Text(
                    //   "تم تسجيل الدخول",
                    //   style: TextStyle(
                    //     fontSize: 50,
                    //     color: Colors.purpleAccent,
                    //     fontWeight: FontWeight.bold,
                    //     fontFamily: "cairo",
                    //   ),
                    // ),

                    RichText(
                      text: TextSpan(
                        style: TextStyle(
                          fontSize: 30,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                              text: 'تم',
                              style: TextStyle(
                                  color:
                                      const Color.fromARGB(255, 136, 20, 58))),
                          TextSpan(
                              text: 'تسجيل',
                              style: TextStyle(
                                  color:
                                      const Color.fromARGB(255, 159, 61, 177))),
                          TextSpan(
                              text: ' الدخول',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 247, 156, 52))),
                        ],
                      ),
                    )
                  ],
                )),
          )
        ],
      ),
    );
  }
}
