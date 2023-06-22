
import 'package:arabic_english_app/screens/blog.dart';
import 'package:flutter/material.dart';
import 'package:localize_and_translate/localize_and_translate.dart';

class SliderBlogWidget extends StatefulWidget {
  const SliderBlogWidget({super.key});

  @override
  State<SliderBlogWidget> createState() => _SliderBlogWidgetState();
}

class _SliderBlogWidgetState extends State<SliderBlogWidget> {
  

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
     child: Container(
            width: width ,
            child: PageView.builder(
              scrollBehavior:const ScrollBehavior(
                androidOverscrollIndicator: AndroidOverscrollIndicator.glow
              ),
              physics:const BouncingScrollPhysics(),
          //    controller: controller,
              itemCount: 2,
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
                                "assets/images/623.jpg" ,
                                fit: BoxFit.cover,
                                ),
                            ),
                          ),
                          Container(
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
                                   "alishaalan".tr(),
                                    style: TextStyle(
                                      fontFamily: "Cairo",
                                      fontSize: width*0.055,
                                      fontWeight: FontWeight.w700
                                    ),
                                  ),
                                ),
                                Text(
                                  "ali".tr(),
                                  style: TextStyle(
                                    fontFamily: "Cairo",
                                    fontSize: width *0.040,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.grey
                                  ),
                                ),
                                 Row(
                            children: [
                            SizedBox(width: width *0.010),
                            const CircleAvatar(
                            backgroundImage: AssetImage(
                            "assets/images/624.jpg",
                          ),
                          backgroundColor: Colors.white,
                          radius: 17,
                        ),
                        Text("Taha Abdelmoneim".tr(),
                        style: TextStyle(
                            fontSize: width*0.050,
                            // ignore: deprecated_member_use
                            color: Theme.of(context).toggleableActiveColor,
                            fontFamily: "Cairo",
                            fontWeight: FontWeight.w600
                          ),),
                        SizedBox(width: width *0.09),
                            Text(
                              "120".tr(),
                              ),
                              Container(
                          width: width*0.050,
                          height: width*0.050,
                          child: Image.asset(
                            "assets/icons/user.png",
                            fit: BoxFit.cover,
                            // ignore: deprecated_member_use
                            color: Theme.of(context).toggleableActiveColor
                            ),
                            ),
                            ],
                          ),
                          const SizedBox(height: 15),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
            ),
          ),
    );
  }
}