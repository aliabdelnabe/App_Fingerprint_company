import 'dart:async';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:localize_and_translate/localize_and_translate.dart';

class CarouselScreen3 extends StatefulWidget {
  const CarouselScreen3({super.key});

  @override
  State<CarouselScreen3> createState() => _CarouselScreen3State();
}

class _CarouselScreen3State extends State<CarouselScreen3> {
  List <String> dataNeme  = [
    "يوسف شعبان",
    "omar Abdelatif",


  ];
  List <String> dataComments  = [
  "تتميز الشركه بالجوده والعمل الممتاز والمتابعه المستمرة فى العمل #بصمه",
  "شركه فى منتهى الزوق والحترام والرقى فى التعامل....سرعة فى الاداء شكراً",

  ];
  List <String> dataImage = [
    "assets/images/622.jpg",
    "assets/images/623.jpg",




  ];
  List <String> sectionName = [
    "Social Media designs",
    "Website design and hosting",



    ];





  late final PageController  pageController;
  int pagNo = 0;

  late final Timer  carasouelTimer ;
  // عداد الوقت للسليدير
  Timer getTimer() {
    return Timer.periodic(const Duration(seconds: 7), (timer) {
      if(pagNo == 4){
        pagNo = 0;
      }
      pageController.animateToPage(
        pagNo,
        duration:const Duration(seconds: 1),
        curve: Curves.easeInOutCirc
        );
        pagNo ++;
    });
  }

  @override
  void initState () {
    pageController = PageController(
      initialPage: 0,
      viewportFraction: 0.98
      );
      carasouelTimer = getTimer();
    super.initState();
  }

  @override

  void dispose(){
    pageController.dispose();
    super.dispose();
  }




  final CarouselController carouselController = CarouselController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          child: PageView.builder(
            controller: pageController,
            itemBuilder: (_, index){
              return AnimatedBuilder(animation:pageController , builder: (ctx,child) {
                return child!;
              },
              child:Container(
              margin: const EdgeInsets.all(12.0),
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          ClipRRect(
                            borderRadius:const BorderRadius.only(
                            topLeft: Radius.circular(18),
                            topRight: Radius.circular(18),
                    ),
                            child: Image.asset(dataImage[index],
                            fit: BoxFit.cover,
                            ),
                           ),
                        const SizedBox(height: 15),
                    Container(
                      decoration: BoxDecoration(
                      boxShadow:const [
                        BoxShadow(
                          offset: Offset(0, 1),
                          blurRadius: 0.5,
                        //  blurStyle: BlurStyle.solid
                        )
                      ],
                      color:Theme.of(context).backgroundColor,
                    ),
                      child: Column(
                        children: [
                          Text(
                          dataNeme[index],
                        style: TextStyle(
                        fontSize: 20,
                        fontFamily: "Cairo",
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).shadowColor,
                      ),
                    ),
                          Text(
                              dataComments[index],
                              style: TextStyle(
                              fontSize: 14,
                              fontFamily: "Cairo",
                              fontWeight: FontWeight.w600,
                              color: Theme.of(context).toggleableActiveColor,
                            ),
                          ),
                          Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "section Name".tr(),
                            style: TextStyle(
                              fontSize: 14,
                              fontFamily: "Cairo",
                              fontWeight: FontWeight.w600,
                              color: Theme.of(context).toggleableActiveColor,
                            ),
                          ),
                          TextButton(
                            onPressed: (){},
                            child: Text(
                              sectionName[index].tr(),
                              style: TextStyle(
                                fontSize: 13,
                                fontFamily: "Cairo",
                                fontWeight: FontWeight.w600,
                                color: Theme.of(context).toggleableActiveColor,
                              ),
                            ),
                          ),
                        ],
                      )
                        ],
                      ),
                    ),
                    const SizedBox(height: 30),
                      
                  ],
                  ),
                ),
            ),
          );
        },itemCount: dataNeme.length,
          ),
        )
      ],
  );
 }


}