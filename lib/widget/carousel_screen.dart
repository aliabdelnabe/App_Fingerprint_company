import 'dart:convert';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:typewritertext/typewritertext.dart';
import 'package:http/http.dart';

class CarouselScreen extends StatefulWidget {
  const CarouselScreen({super.key});

  @override
  State<CarouselScreen> createState() => _CarouselScreenState();
}

class _CarouselScreenState extends State<CarouselScreen> {
  void hero(String data, password) async {
    try {
      Response response = await post(
          Uri.parse("https://backend.fingerprintm.com/api/app_settings"),
          body: {
            "data": data,
          });
      if (response.statusCode == 200) {
        var data = jsonDecode(response.body.toString());
        print(data["message"]);
        print("تسجيل الدخول بنجاح");
      } else {
        print("failed");
      }
    } catch (e) {
      print(e.toString());
    }
  }

  int currentIndex = 0;

  List images = [
    {"id": 1, "image_path": "assets/images/hero_image_1.png"},
    {"id": 2, "image_path": "assets/images/hero_image_2.png"},
    {"id": 3, "image_path": "assets/images/hero_image_3.png"},
  ];

  final CarouselController carouselController = CarouselController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            InkWell(
              onTap: () {},
              child: CarouselSlider(
                items: images
                    .map((item) => Image.asset(
                          item["image_path"],
                          fit: BoxFit.cover,
                          width: double.infinity,
                        ))
                    .toList(),
                carouselController: carouselController,
                options: CarouselOptions(
                    height: 610,
                    scrollPhysics: const BouncingScrollPhysics(),
                    autoPlay: true,
                    aspectRatio: 1,
                    viewportFraction: 1,
                    autoPlayInterval: const Duration(seconds: 4),
                    onPageChanged: (index, reason) {
                      setState(() {
                        currentIndex = index;
                      });
                    }),
              ),
            ),
            Positioned(
              bottom: 10,
              left: 0,
              right: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: images.asMap().entries.map((entery) {
                  return GestureDetector(
                    onTap: () => carouselController.animateToPage(entery.key),
                    child: Container(
                      width: currentIndex == entery.key ? 12 : 10,
                      height: 10.0,
                      margin: const EdgeInsets.symmetric(horizontal: 2.2),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: currentIndex == entery.key
                              ? Colors.blue
                              : Colors.grey),
                    ),
                  );
                }).toList(),
              ),
            ),
            Positioned(
              top: 60,
              right: 10,
              left: 10,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ShaderMask(
                    shaderCallback: (bounds) => const LinearGradient(colors: [
                      Color(0xff46033A),
                      Colors.yellow,
                      Colors.white,
                    ], stops: [
                      0.3,
                      0.20,
                      0.50
                    ]).createShader(bounds),
                    child: TypeWriterText(
                      repeat: true,
                      play: true,
                      maintainSize: true,
                      text: Text(
                        "typeWriter".tr(),
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 21,
                          fontFamily: "Cairo",
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      duration: const Duration(milliseconds: 350),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    width: double.infinity,
                    child: Text(
                      "fingrprent".tr(),
                      textDirection: TextDirection.ltr,
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Cairo",
                        overflow: TextOverflow.clip,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  Container(
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xffffbc01),
                          ),
                          onPressed: () {},
                          child: Text(
                            "contact us1".tr(),
                            style: const TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                                fontFamily: "Cairo",
                                overflow: TextOverflow.clip),
                          ),
                        ),
                        const SizedBox(width: 0),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xffffbc01)),
                          onPressed: () {},
                          child: Text(
                            "text3".tr(),
                            style: const TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                                fontFamily: "Cairo",
                                overflow: TextOverflow.clip),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 25),
                  Container(
                    width: double.infinity,
                    child: Image.asset("assets/images/hero_web.bda21d05.png"),
                  )
                ],
              ),
            )
          ],
        )
      ],
    );
  }
}
