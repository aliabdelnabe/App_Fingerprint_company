import 'package:arabic_english_app/screens/mobile_body.dart';
import 'package:arabic_english_app/widget/Content%20writing.dart';
import 'package:arabic_english_app/widget/after_sales_services.dart';
import 'package:arabic_english_app/widget/foter_bar.dart';
import 'package:arabic_english_app/widget/my_heardre_drawer.dart';
import 'package:arabic_english_app/widget/we_are_on_time.dart';
import 'package:arabic_english_app/widget/we_create_great.dart';
import 'package:arabic_english_app/widget/we_value_integity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:localize_and_translate/localize_and_translate.dart';

import '../widget/you_speak.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      drawerScrimColor: Theme.of(context).selectedRowColor,
       drawer: const MyHeadreDrawer(),
      appBar:AppBar(
        centerTitle: true,
    excludeHeaderSemantics: true,
    automaticallyImplyLeading: false,
    elevation: 4,
    backgroundColor:Theme.of(context).primaryColor,
    title: const Text(
      "ttt",
      ),
      actions: [
        Builder(builder: (context){
        return Row(
            crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Container(
              width: width,
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                  width: 50,
                  height: 50,
            child: const Image(
            image: AssetImage("assets/images/logo-transparent.png"),
            color: Colors.white,
          ),
          ),
            Container(
              width: 50,
              height: 50,
              child: IconButton(onPressed: (){
                  Scaffold.of(context).openDrawer();
                }, icon:SvgPicture.asset(
                  "assets/icons/menu.svg",
                  color: Colors.white,
                ), ),
            ),
              ],
              ),
            )
          ],
        );
    },
    ),
      ],
  ),
  body:  Column(
    children: [
      Expanded(
        child: ListView.builder(
          itemCount: 1,
          itemBuilder: (context, index){
            return Container(
              width: double.infinity,
              color: Theme.of(context).    primaryColorDark,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Stack(
                    children:[
                      Container(
                      width: double.infinity,
                      height: width*0.20,
                      decoration: BoxDecoration(
                        color: Theme.of(context).primaryColorDark,
                        boxShadow: [
                          BoxShadow(
                            offset: const Offset(0,3),
                            blurRadius: 2, color:Theme.of(context).hoverColor)
                      ],
                      ),
                     // child:Image.asset(
                     //   "assets/images/breadcrumb.cad63821.jpeg",
                     //   fit: BoxFit.cover,
                     //   ) ,
                      ),
                    Positioned(
                      top: 5,
                      bottom: 5,
                      left: 0,
                      right: 0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        TextButton(
                          onPressed: (){
                            Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                  builder: (context) => const MyMobileBody()));
                          }, 
                          child: Icon(Icons.home_outlined,
                          color: Theme.of(context).canvasColor,
                          ),
                          ),
                          Text(
                          ">>",
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: width*0.070,
                            fontFamily: "Cairo",
                            color: Theme.of(context).canvasColor,
                            fontWeight: FontWeight.w600
                          ),
                          ),
                          const SizedBox(width: 6),
                          Text(
                          "Important Links4".tr(),
                        style: TextStyle(
                          fontFamily: "Cairo",
                          fontSize: width*0.065,
                          color: Theme.of(context).canvasColor,
                          fontWeight: FontWeight.w600
                        ),
                        ),
                        const SizedBox(width: 2),
                      ]
                    ),
              ),
              ],
                      ),
                      Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Theme.of(context).splashColor,
            
                boxShadow: [
                  BoxShadow(
                  offset: const Offset(0,1),
                  blurRadius: 1, color:Theme.of(context).hoverColor)
                      ],
              ),
              child: Column(
                children: [
                  const SizedBox(height: 40),
                  Text(
                    "Imprint company".tr(),
                    style: TextStyle(
                      fontSize: width*0.09,
                      fontFamily: "Cairo",
                      fontWeight: FontWeight.w700,
                      color: Theme.of(context).primaryColorLight,
                    ),
                  ),
                  Container(
                    width: width* 0.50,
                    height: 1.5,
                    color: const Color(0xFFFFBC01),
                  ),
                  const SizedBox(height: 60,),
                  Container(
                    margin: const EdgeInsets.all(10),
                    padding: const EdgeInsets.all(5),
                    child:
                        Text(
                          "Imprint company1".tr(),
                          overflow: TextOverflow.clip,
                          style: TextStyle(
                            fontSize: width * 0.035,
                            fontFamily: "Cairo",
                            fontWeight: FontWeight.w600
                          ),
                        ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    padding: const EdgeInsets.all(5),
                    child:
                        Text(
                          "fingerprint".tr(),
                          overflow: TextOverflow.clip,
                          style: TextStyle(
                            fontSize: width * 0.035,
                            fontFamily: "Cairo",
                            fontWeight: FontWeight.w600
                          ),
                        ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    padding: const EdgeInsets.all(5),
                    child:
                        Text(
                          "fingerprint1".tr(),
                          overflow: TextOverflow.clip,
                          style: TextStyle(
                            fontSize: width * 0.035,
                            fontFamily: "Cairo",
                            fontWeight: FontWeight.w600
                          ),
                        ),
                  ),
                  Text(
                    "about imprint".tr(),
                    style: TextStyle(
                      fontSize: width * 0.09,
                      fontFamily: "Cairo",
                      fontWeight: FontWeight.w700,
                      color: Theme.of(context).primaryColorLight,
                    ),
                  ),
                  Container(
                    width: width* 0.50,
                    height: 1.5,
                    color: const Color(0xFFFFBC01),
                  ),
                  const SizedBox(height: 40),
                  Container(
                    margin: const EdgeInsets.all(10),
                    padding: const EdgeInsets.all(5),
                    child:
                        Text(
                          "about imprint1".tr(),
                          overflow: TextOverflow.clip,
                          style: TextStyle(
                            fontSize: width * 0.035,
                            fontFamily: "Cairo",
                            fontWeight: FontWeight.w600
                          ),
                        ),
                  ),
                  const SizedBox(height: 40),
                  Container(
                    margin: const EdgeInsets.all(10),
                    padding: const EdgeInsets.all(5),
                    child:
                        Text(
                          "about imprint2".tr(),
                          overflow: TextOverflow.clip,
                          style: TextStyle(
                            fontSize: width * 0.035,
                            fontFamily: "Cairo",
                            fontWeight: FontWeight.w600
                          ),
                        ),
                  ),
                ],
              ),
                      ),
                      const SizedBox(height: 40),
                      Text(
                    "should a fingerprint".tr(),
                    style: TextStyle(
                      fontSize: width * 0.05,
                      fontFamily: "Cairo",
                      fontWeight: FontWeight.w700,
                      color: Theme.of(context).primaryColorLight,
                    ),
                  ),
                  const SizedBox(height: 1),
                  Container(
                    width: 308,
                    height: 1.5,
                    color: const Color(0xFFFFBC01),
                  ),
                  YouSpeak(width: width,),
                  WeValueIntegrity(width: width),
                  ContentWriting(width: width),
                  WeCreatGreat(width: width),
                  WeAreOnTime(width: width),
                  AfterSalesServices(width: width),
                  const SizedBox(height: 20,),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color:const Color.fromARGB(255, 177, 34, 151),
                      boxShadow: [
                      BoxShadow(
                      offset: const Offset(0,1),
                      blurRadius: 1, color:Theme.of(context).hoverColor)
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.all(15),
                          child: Column(
                            crossAxisAlignment:CrossAxisAlignment.start,
                            children: [
                              Text("see us".tr(),
                              overflow: TextOverflow.clip,
                              style: TextStyle(
                                fontSize: width * 0.085,
                                fontFamily: "Cairo",
                                fontWeight: FontWeight.bold,
                                color:const Color(0xFFFFBC01),
                              ),
                              ),
                              Text("see us1".tr(),
                              style: TextStyle(
                                fontSize: width * 0.038,
                                fontFamily: "Cairo",
                                fontWeight: FontWeight.w600,
                                color: Color.fromARGB(255, 255, 255, 255),
                              ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.all(15),
                          child: Column(
                            crossAxisAlignment:CrossAxisAlignment.start,
                            children: [
                              Text("Our Mission".tr(),
                              overflow: TextOverflow.clip,
                              style:  TextStyle(
                                fontSize: width * 0.085,
                                fontFamily: "Cairo",
                                fontWeight: FontWeight.bold,
                                color:const Color(0xFFFFBC01),
                              ),
                              ),
                              Text("Our Mission1".tr(),
                              style:  TextStyle(
                                fontSize: width * 0.038,
                                fontFamily: "Cairo",
                                fontWeight: FontWeight.w600,
                                color:const Color.fromARGB(255, 255, 255, 255),
                              ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.all(15),
                          child: Column(
                            crossAxisAlignment:CrossAxisAlignment.start,
                            children: [
                              Text("Our Targets".tr(),
                              overflow: TextOverflow.clip,
                              style:  TextStyle(
                                fontSize: width * 0.085,
                                fontFamily: "Cairo",
                                fontWeight: FontWeight.bold,
                                color:const Color(0xFFFFBC01),
                              ),
                              ),
                              Text("Our Targets1".tr(),
                              style:  TextStyle(
                                fontSize: width * 0.038,
                                fontFamily: "Cairo",
                                fontWeight: FontWeight.w600,
                                color:const Color.fromARGB(255, 255, 255, 255),
                              ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.all(15),
                          child: Column(
                            crossAxisAlignment:CrossAxisAlignment.start,
                            children: [
                              Text("planning".tr(),
                              overflow: TextOverflow.clip,
                              style:  TextStyle(
                                fontSize: width * 0.085,
                                fontFamily: "Cairo",
                                fontWeight: FontWeight.bold,
                                color:const Color(0xFFFFBC01),
                              ),
                              ),
                              Text("planning1".tr(),
                              style:  TextStyle(
                                fontSize: width * 0.038,
                                fontFamily: "Cairo",
                                fontWeight: FontWeight.w600,
                                color:const Color.fromARGB(255, 255, 255, 255),
                              ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.all(15),
                          child: Column(
                            crossAxisAlignment:CrossAxisAlignment.start,
                            children: [
                              Text("the job".tr(),
                              overflow: TextOverflow.clip,
                              style:  TextStyle(
                                fontSize: width * 0.085,
                                fontFamily: "Cairo",
                                fontWeight: FontWeight.bold,
                                color:const Color(0xFFFFBC01),
                              ),
                              ),
                              Text("the job1".tr(),
                              style:  TextStyle(
                                fontSize: width * 0.038,
                                fontFamily: "Cairo",
                                fontWeight: FontWeight.w600,
                                color:const Color.fromARGB(255, 255, 255, 255),
                              ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.all(15),
                          child: Column(
                            crossAxisAlignment:CrossAxisAlignment.start,
                            children: [
                              Text("follow".tr(),
                              overflow: TextOverflow.clip,
                              style:  TextStyle(
                                fontSize: width * 0.085,
                                fontFamily: "Cairo",
                                fontWeight: FontWeight.bold,
                                color:const Color(0xFFFFBC01),
                              ),
                              ),
                              Text("follow1".tr(),
                              style:  TextStyle(
                                fontSize: width * 0.038,
                                fontFamily: "Cairo",
                                fontWeight: FontWeight.w600,
                                color:const Color.fromARGB(255, 255, 255, 255),
                              ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20,),
                  Text(
                    "Start Steps".tr(),
                    style: TextStyle(
                      fontSize: width * 0.09,
                      fontFamily: "Cairo",
                      fontWeight: FontWeight.w700,
                      color:const  Color(0xff5631A0),
                    ),
                  ),
                   Container(
                    width: width * 0.70,
                    height: 1.5,
                    color:const Color(0xFFFFBC01),
                  ),
                  const SizedBox(height: 60,),
                  Container(
                    width: width * 0.90,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 177, 34, 151),
                      borderRadius: BorderRadius.circular(60)
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(height: 0,),
                        Container(
                          height: width*0.1,
                          width: width *0.1,
                          child: Image.asset(
                            "assets/images/right (1).png",
                            color: Colors.white,
                            fit: BoxFit.cover,
                            ),
                            ),
                            Container(
                              child: Text(
                                "Submit a service request to the company".tr(),
                                  style: TextStyle(
                                    fontSize: width *0.058,
                                    fontWeight: FontWeight.bold,
                                    color:const Color(0xFFFFBC01),
                                    fontFamily: "Cairo",
                                  ),
                                ),
                            )
                      ],
                    ),
                  ),
                  const SizedBox(height: 40),
                  Container(
                    width: width * 0.90,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 177, 34, 151),
                      borderRadius: BorderRadius.circular(60)
                    ),
                    child: Column(
                      children: [
                        const SizedBox(height: 0,),
                        Container(
                          height: width *0.1,
                          width: width *0.1,
                          child: Image.asset(
                            "assets/images/right (1).png",
                            color: Colors.white,
                            fit: BoxFit.cover,
                            ),
                            ),
                            Container(
                              child: Text(
                                "Get Project Data".tr(),
                                  style: TextStyle(
                                    fontSize: width *0.058,
                                    fontWeight: FontWeight.bold,
                                    color:const Color(0xFFFFBC01),
                                    fontFamily: "Cairo",
                                  ),
                                ),
                            )
                      ],
                    ),
                  ),
                  const SizedBox(height: 40),
                  Container(
                    width: width * 0.90,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 177, 34, 151),
                      borderRadius: BorderRadius.circular(60)
                    ),
                    child: Column(
                      children: [
                        const SizedBox(height: 0,),
                        Container(
                          height: width*0.1,
                          width: width*0.1,
                          child: Image.asset(
                            "assets/images/right (1).png",
                            color: Colors.white,
                            fit: BoxFit.cover,
                            ),
                            ),
                            Container(
                              child: Text(
                                "Submission of technical".tr(),
                                  style: TextStyle(
                                    fontSize: width *0.058,
                                    fontWeight: FontWeight.bold,
                                    color:const Color(0xFFFFBC01),
                                    fontFamily: "Cairo",
                                  ),
                                ),
                            )
                      ],
                    ),
                  ),
                  const SizedBox(height: 40),
                  Container(
                    width: width * 0.90,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 177, 34, 151),
                      borderRadius: BorderRadius.circular(60)
                    ),
                    child: Column(
                      children: [
                        const SizedBox(height: 0,),
                        Container(
                          height: width*0.1,
                          width: width*0.1,
                          child: Image.asset(
                            "assets/images/right (1).png",
                            color: Colors.white,
                            fit: BoxFit.cover,
                            ),
                            ),
                            Container(
                              child: Text(
                                "start according".tr(),
                                  style: TextStyle(
                                    fontSize: width *0.058,
                                    fontWeight: FontWeight.bold,
                                    color:const Color(0xFFFFBC01),
                                    fontFamily: "Cairo",
                                  ),
                                ),
                            )
                      ],
                    ),
                  ),
                  const SizedBox(height: 40),
                  Container(
                    width: width * 0.90,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 177, 34, 151),
                      borderRadius: BorderRadius.circular(60)
                    ),
                    child: Column(
                      children: [
                        const SizedBox(height: 0,),
                        Container(
                          height: width*0.1,
                          width: width*0.1,
                          child: Image.asset(
                            "assets/images/right (1).png",
                            color: Colors.white,
                            fit: BoxFit.cover,
                            ),
                            ),
                            Container(
                              child: Text(
                                "Provide an initial".tr(),
                                  style: TextStyle(
                                    fontSize: width *0.058,
                                    fontWeight: FontWeight.bold,
                                    color:const Color(0xFFFFBC01),
                                    fontFamily: "Cairo",
                                  ),
                                ),
                            )
                      ],
                    ),
                  ),
                  const SizedBox(height: 40),
                  Container(
                    width: width * 0.90,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 177, 34, 151),
                      borderRadius: BorderRadius.circular(60)
                    ),
                    child: Column(
                      children: [
                        const SizedBox(height: 0,),
                        Container(
                          height: width*0.1,
                          width: width*0.1,
                          child: Image.asset(
                            "assets/images/right (1).png",
                            color: Colors.white,
                            fit: BoxFit.cover,
                            ),
                            ),
                            Container(
                              child: Text(
                                "Getting approval".tr(),
                                  style: TextStyle(
                                    fontSize: width *0.044,
                                    fontWeight: FontWeight.bold,
                                    color:const Color(0xFFFFBC01),
                                    fontFamily: "Cairo",
                                  ),
                                ),
                            )
                      ],
                    ),
                  ),
                  const SizedBox(height: 40),
                  Container(
                    width: width * 0.90,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 177, 34, 151),
                      borderRadius: BorderRadius.circular(60)
                    ),
                    child: Column(
                      children: [
                        const SizedBox(height: 0,),
                        Container(
                          height: width *0.1,
                          width: width*0.1,
                          child: Image.asset(
                            "assets/images/right (1).png",
                            color: Colors.white,
                            fit: BoxFit.cover,
                            ),
                            ),
                            Container(
                              child: Text(
                                "Set the time".tr(),
                                  style: TextStyle(
                                    fontSize: width *0.058,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFFFFBC01),
                                    fontFamily: "Cairo",
                                  ),
                                ),
                            )
                      ],
                    ),
                  ),
                  const SizedBox(height: 40),
                  Container(
                    width: width * 0.90,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 177, 34, 151),
                      borderRadius: BorderRadius.circular(60)
                    ),
                    child: Column(
                      children: [
                        const SizedBox(height: 0,),
                        Container(
                          height: width *0.1,
                          width: width*0.1,
                          child: Image.asset(
                            "assets/images/right (1).png",
                            color: Colors.white,
                            fit: BoxFit.cover,
                            ),
                            ),
                            Container(
                              child: Text(
                                "Final Image ".tr(),
                                  style: TextStyle(
                                    fontSize: width *0.058,
                                    fontWeight: FontWeight.bold,
                                    color:const Color(0xFFFFBC01),
                                    fontFamily: "Cairo",
                                  ),
                                ),
                            )
                      ],
                    ),
                  ),
                  const SizedBox(height: 40),
                  Container(
                    width: width * 0.90,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 177, 34, 151),
                      borderRadius: BorderRadius.circular(60)
                    ),
                    child: Column(
                      children: [
                        const SizedBox(height: 0,),
                        Container(
                          height: width*0.1,
                          width: width*0.1,
                          child: Image.asset(
                            "assets/images/right (1).png",
                            color: Colors.white,
                            fit: BoxFit.cover,
                            ),
                            ),
                            Container(
                              child: Text(
                            "Technical and after".tr(),
                                  style: TextStyle(
                                    fontSize: width *0.055,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFFFFBC01),
                                    fontFamily: "Cairo",
                                  ),
                                ),
                            )
                      ],
                    ),
                  ),
                      const SizedBox(height: 70),
                      FooterBar(),
              Container(
              padding: const EdgeInsets.all(8.0),
              width: width,
              height: 40,
              color: const Color(0xff704ABA),
              child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Text(
              "contanerbar".tr(),
              overflow: TextOverflow.clip,
              style: const TextStyle(
              fontSize: 15,
              fontFamily: "Cairo",
              fontWeight: FontWeight.w600,
              color: Colors.white
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
      )
    ],
  ),
    );
  }
}