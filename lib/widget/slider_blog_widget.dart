import 'dart:async';

import 'package:arabic_english_app/screens/blog.dart';
import 'package:flutter/material.dart';
import 'package:localize_and_translate/localize_and_translate.dart';

class SliderBlogWidget extends StatefulWidget {
  const SliderBlogWidget({super.key});

  @override
  State<SliderBlogWidget> createState() => _SliderBlogWidgetState();
}

class _SliderBlogWidgetState extends State<SliderBlogWidget> {
  List<String> images = [
    "assets/images/623.jpg",
    "assets/images/622.jpg"
  ];

  List<String> title = [
    "Advantages of creating",
    "What are the"


  ];
  List<String> comment = [
    "slider title2",
    "slider title1"
  ];
  List<String> number = [
    "163",
    "112"
  ];
   late final PageController  controller;
  int pagNo = 0;

  late final Timer  carasouelTimer ;
  // عداد الوقت للسليدير
  Timer getTimer() {
    return Timer.periodic(const Duration(seconds: 7), (timer) {
      if(pagNo == 4){
        pagNo = 0;
      }
      controller.animateToPage(
        pagNo,
        duration:const Duration(seconds: 1),
        curve: Curves.easeInOutCirc
        );
        pagNo ++;
     });
  }

  @override
  void initState () {
    controller = PageController(
      initialPage: 0,
      viewportFraction: 0.98
      );
      carasouelTimer = getTimer();
    super.initState();
  }

  @override

  void dispose(){
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
      child: Column(
        children: [
          Container(
            height: 600,
            width: width ,
            child: PageView.builder(
              controller: controller,
              itemCount: images.length,
              itemBuilder:(context, index){
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      decoration:const BoxDecoration(
                      ),
                      child: Column(
                        children: [
                          Container(
                            decoration:  BoxDecoration(
                              boxShadow: [
                        BoxShadow(
                          offset: Offset(0, 10),
                          blurRadius: 20,
                          color: Theme.of(context).splashColor,
                        )
                      ],
                            ),
                            child: ClipRRect(
                                borderRadius:const BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                              ),
                              child: Image.asset(
                                images[index] ,
                                fit: BoxFit.cover,
                                ),
                            ),
                          ),
                          Container(
                            height: 200,
                            padding:const EdgeInsets.only(
                              left: 5,
                              right: 5
                            ),
                            width: width * 0.95,
                            decoration: BoxDecoration(
                              color: Theme.of(context).splashColor,
                              borderRadius:const BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        ),
                        boxShadow: [
                        BoxShadow(
                          offset:const Offset(0, 5),
                          blurRadius: 10,
                          color: Theme.of(context).splashColor,
                        )
                      ],
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                InkWell(
                                  onTap: (){
                                    Navigator.push(
                              context,
                              MaterialPageRoute(
                              builder: (context) => const Blog()));
                                  },
                                  child: Text(
                                    title[index].tr(),
                                    style: TextStyle(
                                      fontFamily: "Cairo",
                                      fontSize: width/19,
                                      fontWeight: FontWeight.w700
                                    ),
                                  ),
                                ),
                                Text(
                                  comment[index].tr(),
                                  style: TextStyle(
                                    fontFamily: "Cairo",
                                    fontSize: width / 25,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.grey
                                  ),
                                ),
                                 Row(
                            children: [
                            SizedBox(width: width / 90),
                            const CircleAvatar(
                            backgroundImage: AssetImage(
                            "assets/images/624.jpg",
                          ),
                          backgroundColor: Colors.white,
                          radius: 17,
                        ),
                        Text("Taha Abdelmoneim".tr(),
                        style: TextStyle(
                            fontSize: width/23,
                            // ignore: deprecated_member_use
                            color: Theme.of(context).toggleableActiveColor,
                            fontFamily: "Cairo",
                            fontWeight: FontWeight.w600
                          ),),
                        SizedBox(width: width / 4),
                            Text(
                              number[index].tr(),
                              ),
                              Container(
                          width: 22,
                          height: 22,
                          child: Image.asset(
                            "assets/icons/user.png",
                            fit: BoxFit.cover,
                            // ignore: deprecated_member_use
                            color: Theme.of(context).toggleableActiveColor
                            ),
                            ),
                            ],
                          ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
            
            
            ),
          ),
        ],
      ),
    );
  }
}