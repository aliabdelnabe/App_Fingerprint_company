import 'dart:async';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:localize_and_translate/localize_and_translate.dart';

class CarouselScreen2 extends StatefulWidget {
  const CarouselScreen2({super.key});

  @override
  State<CarouselScreen2> createState() => _CarouselScreenState();
}

class _CarouselScreenState extends State<CarouselScreen2> {
  List <String> dataNeme  = [
    "يوسف شعبان",
    "omar Abdelatif",
    "mohamed osama",
    "Yasser M.Ewayan",

  ];
  List <String> dataComments  = [
  "تتميز الشركه بالجوده والعمل الممتاز والمتابعه المستمرة فى العمل #بصمه",
  "شركه فى منتهى الزوق والحترام والرقى فى التعامل....سرعة فى الاداء شكراً",
  "بجد شركه محترمه جداً والتسليم فى الاوقات المحدده",
  "تتسم الشركة بالمواعيد والجدية فى العمل",

  ];
  List <String> dataImage = [
    "assets/images/unnamed.png",
    "assets/images/3.jpg",
    "assets/images/6.png",
    "assets/images/letter-y.png",



  ];
  List <String> sectionName = [
    "Social Media designs",
    "Website design and hosting",
    "Section",
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
          height: 350,
          child: PageView.builder(
            physics: const BouncingScrollPhysics(),
            controller: pageController,
            itemBuilder: (_, index){
              return AnimatedBuilder(animation:pageController , builder: (ctx,child) {
                return child!;
              },
              child:Container(
              margin: const EdgeInsets.all(12.0),
               decoration: BoxDecoration(
                      boxShadow:const [
                        BoxShadow(
                          offset: Offset(0, 1),
                          blurRadius: 0.5,
                          
                        //  blurStyle: BlurStyle.solid
                        )
                      ],
                      borderRadius:const BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        topLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                        topRight: Radius.circular(10)
                      ),
                        color:Theme.of(context).backgroundColor,
                    ),
                    child: Container(
                      margin: const EdgeInsets.all(25),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                           CircleAvatar(
                            backgroundImage: AssetImage(
                            dataImage[index],
                          ),
                          backgroundColor: Colors.white,
                          radius: 40,
                        ),
                        const SizedBox(height: 15),
                        Text(
                          dataNeme[index],
                        style: TextStyle(
                        fontSize: 20,
                        fontFamily: "Cairo",
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).shadowColor,
                      ),
                    ),
                    const SizedBox(height: 10,),
                    Text(
                        dataComments[index],
                        style: TextStyle(
                        fontSize: 14,
                        fontFamily: "Cairo",
                        fontWeight: FontWeight.w600,
                        color: Theme.of(context).toggleableActiveColor,
                      ),
                    ),
                    const SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "section Name".tr(),
                            style: TextStyle(
                              fontSize: 12,
                              fontFamily: "Cairo",
                              fontWeight: FontWeight.w600,
                              color: Theme.of(context).toggleableActiveColor,
                            ),
                          ),
                          const SizedBox(width: 5.6,),
                          InkWell(
                            onTap: (){},
                            child: Text(
                              sectionName[index].tr(),
                              overflow: TextOverflow.clip,
                              style: TextStyle(
                                fontSize: 14,
                                fontFamily: "Cairo",
                                fontWeight: FontWeight.w600,
                                color: Theme.of(context).toggleableActiveColor,
                              ),
                            ),
                          )
                        ],
                      )
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

/*
 
            */