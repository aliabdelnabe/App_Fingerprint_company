


import 'dart:async';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:localize_and_translate/localize_and_translate.dart';

class blug2 extends StatefulWidget {
  const blug2({super.key});

  @override
  State<blug2> createState() => _blug2State();
}

class _blug2State extends State<blug2> {
  List <String> dataNeme  = [
    "What are the",
    "Advantages of creating",


  ];
  List <String> dataComments  = [
  "What are the1",
  "Advantages2",


  ];
  List <String> dataImage = [
    "assets/images/622.jpg",
    "assets/images/623.jpg",



  ];
  List <String> sectionName = [
    "Taha Abdelmoneim",
    "Taha Abdelmoneim",



    ];

    List <String> numberView = [
    "112",
    "163",



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
    final width = MediaQuery.of(context).size.width;
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        SizedBox(
          height: 500,
          child: PageView.builder(
            physics: const BouncingScrollPhysics(),
            controller: pageController,
            itemBuilder: (_, index){
              return AnimatedBuilder(animation:pageController , builder: (ctx,child) {
                return child!;
              },
              child:Container(
                child: Column(
                  children: [
                   Container(
                      width: width * 0.93,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9),
                      ),
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius:const BorderRadius.only(
                              topLeft: Radius.circular(9),
                              topRight: Radius.circular(9),
                            ),
                            child: Material(
                              child: InkWell(
                                child: Image.asset(
                                  dataImage[index],
                                  fit: BoxFit.cover,
                                  
                                ),
                              ),
                            )
                          ),
                          Container(
                            width: size.width * 0.93,
                            decoration: BoxDecoration(
                              borderRadius:const BorderRadius.only(
                                bottomLeft: Radius.circular(9),
                                bottomRight: Radius.circular(9),
                              ),
                                color:Theme.of(context).splashColor,
                            ),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    TextButton(
                                      onPressed: (){},
                                      child: Text(dataNeme[index].tr()
                                      ,style: TextStyle(
                                        fontSize: 20,
                                        fontFamily: "Cairo",
                                        color: Theme.of(context).unselectedWidgetColor
                                      ),
                                      )),
                                      TextButton(
                                        onPressed: null,
                                        child: Text(dataComments[index].tr(),
                                        overflow: TextOverflow.fade,
                                        style: TextStyle(
                                          fontSize:width * 0.033,
                                          fontFamily: "Cairo",
                                          color: Theme.of(context).canvasColor,
                                          fontWeight: FontWeight.w600
                                        ),
                                        ),
                                      ),
                                  ],
                                ),
                                Row(
                              children: [
                              SizedBox(width: width / 90),
                              const CircleAvatar(
                              backgroundImage: AssetImage(
                              "assets/images/624.jpg",
                            ),
                            backgroundColor: Colors.white,
                            radius: 15,
                          ),
                          SizedBox(width: width * 0.020,),
                          Text(sectionName[index].tr(),
                          
                          style: TextStyle(
                              fontSize: width *0.040,
                              // ignore: deprecated_member_use
                              color: Theme.of(context).toggleableActiveColor,
                              fontFamily: "Cairo",
                              fontWeight: FontWeight.w600
                            ),),
                              SizedBox(width: width * 0.3),
                              Text(
                                numberView[index],
                                ),
                                Container(
                            width: 25,
                            height: 25,
                            child: Image.asset(
                              "assets/icons/user.png",
                              fit: BoxFit.cover,
                              // ignore: deprecated_member_use
                              color: Theme.of(context).toggleableActiveColor
                              ),
                              ),
                              ],
                            ),
                                const SizedBox(height: 15,)
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
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

