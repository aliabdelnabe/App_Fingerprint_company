
import 'package:arabic_english_app/views/contact_us.dart';
import 'package:arabic_english_app/views/mobile_body.dart';
import 'package:flutter/material.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:url_launcher/url_launcher.dart';

class FooterBar extends StatelessWidget {


_launchUrl(String url) async{
  if(await canLaunch(url)){
    await launch(url);
  }else {
    throw 'could not launch $url';
  }
}




  void openWhatsApp(String phoneNumber,String message) async {
    String url = "Whatsapp://send?phone=$phoneNumber&text=$message";

    if(await canLaunch(url)){
      await launch(url);
    }else{
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    final Uri phoneNumber = Uri.parse('tel:+201090844348');
    final width = MediaQuery.of(context).size.width;
    return Container(
      width: width,
      color: Theme.of(context).primaryColor,
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 80,
            decoration: BoxDecoration(
            color: Theme.of(context).cardColor,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
               // ignore: avoid_unnecessary_containers
               Container(
                 child: Text(
                  "text3".tr(),
                  style:const TextStyle(
                    fontSize: 15,
                    fontFamily: "Cairo",
                    color: Color(0xff3B359F),
                  fontWeight: FontWeight.bold
                  ),
                  ),
               ),
               const SizedBox(width: 4),
                ElevatedButton(
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                      builder: (context) => const ContactUs()));
                  }, 
                  // ignore: sort_child_properties_last
                  child:  Text(
                    "text4".tr(),
                    style:const TextStyle(
                      fontSize: 14,
                      fontFamily: "Cairo",
                      color: Colors.white ,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xff3B359F),
                  shadowColor: Colors.transparent
                  ),
                  ),
              ],
            ),
          ),
          const SizedBox(height: 25),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: width,
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:[
                        Text(
                          "fingerprint",
                          style: TextStyle(
                            fontSize: 22,
                            fontFamily: "assets/fonts/Inter-Regular.woff",
                            color: Colors.white,
                          ),
                          ),
                          SizedBox(height: 15,),
                        Text(
                          "Digital Marketing & Website design",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 13
                          ),
                          ),
                      ],
                    ),
                    const SizedBox(width: 5,),
                    Container(
                      width: 3,
                      height: 45,
                      color: Colors.white,
                    ),
                    Container(
                      width: 80,
                      height: 80,
                      child: Image.asset("assets/images/logo-transparent.png"),
                    ),
                    const SizedBox(height: 15,),
                    
                  ],
                ),
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment:CrossAxisAlignment.center ,
            children: [
              Container(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "text5".tr(),
                  overflow: TextOverflow.clip,
                  maxLines: 7,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontFamily: "Cairo",
                    fontWeight: FontWeight.w600
                  ),
                  ),
              ),
            ],
          ),
          Container(
            padding: const EdgeInsets.all(5.0),
            child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              // ignore: avoid_unnecessary_containers
              Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "text6".tr(),
                    style:const TextStyle(
                      fontSize: 40,
                      color: Color(0xffFFBC00),
                      fontFamily: "Cairo",
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                    const SizedBox(height: 10),
                    TextButton(
                      onPressed: (){},
                      child: Text("text7".tr(),
                      style:const TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontFamily: "Cairo",
                        fontWeight: FontWeight.w600
                      ),
                      ),
                    ),
                    TextButton(
                      onPressed: (){},
                      child: Text("text8".tr(),
                      style:const TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontFamily: "Cairo",
                        fontWeight: FontWeight.w600
                      ),
                      ),
                    ),
                    TextButton(
                      onPressed: (){},
                      child: Text("text9".tr(),
                      style:const TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontFamily: "Cairo",
                        fontWeight: FontWeight.w600
                      ),
                      ),
                    ),
                    TextButton(
                      onPressed: (){},
                      child: Text("text10".tr(),
                      style:const TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontFamily: "Cairo",
                        fontWeight: FontWeight.w600
                      ),
                      ),
                    ),
                    TextButton(
                      onPressed: (){},
                      child: Text("text11".tr(),
                      style:const TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontFamily: "Cairo",
                        fontWeight: FontWeight.w600
                      ),
                      ),
                    ),
                    TextButton(
                      onPressed: (){},
                      child: Text("text12".tr(),
                      style:const TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontFamily: "Cairo",
                        fontWeight: FontWeight.w600
                      ),
                      ),
                    ),
                    TextButton(
                      onPressed: (){},
                      child: Text("text13".tr(),
                      style:const TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontFamily: "Cairo",
                        fontWeight: FontWeight.w600
                      ),
                      ),
                    ),
                    TextButton(
                      onPressed: (){},
                      child: Text("text14".tr(),
                      style:const TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontFamily: "Cairo",
                        fontWeight: FontWeight.w600
                      ),
                      ),
                    ),
                ],
              ),
            ),
              // ignore: avoid_unnecessary_containers
              Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Important Links".tr(),
                    style:const TextStyle(
                      fontSize: 40,
                      color: Color(0xffFFBC00),
                      fontFamily: "Cairo",
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                    const SizedBox(height: 10),
                    TextButton(
                      onPressed: (){},
                      child: Text("Important Links1".tr(),
                      style:const TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontFamily: "Cairo",
                        fontWeight: FontWeight.w600
                      ),
                      ),
                    ),
                    TextButton(
                      onPressed: (){},
                      child: Text("Important Links2".tr(),
                      style:const TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontFamily: "Cairo",
                        fontWeight: FontWeight.w600
                      ),
                      ),
                    ),
                    TextButton(
                      onPressed: (){},
                      child: Text("Important Links3".tr(),
                      style:const TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontFamily: "Cairo",
                        fontWeight: FontWeight.w600
                      ),
                      ),
                    ),
                    TextButton(
                      onPressed: (){},
                      child: Text("Important Links4".tr(),
                      style:const TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontFamily: "Cairo",
                        fontWeight: FontWeight.w600
                      ),
                      ),
                    ),
                    TextButton(
                      onPressed: (){},
                      child: Text("Important Links5".tr(),
                      style:const TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontFamily: "Cairo",
                        fontWeight: FontWeight.w600
                      ),
                      ),
                    ),
                    TextButton(
                      onPressed: (){},
                      child: Text("Important Links6".tr(),
                      style:const TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontFamily: "Cairo",
                        fontWeight: FontWeight.w600
                      ),
                      ),
                    ),
                    TextButton(
                      onPressed: (){},
                      child: Text("Important Links7".tr(),
                      style:const TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontFamily: "Cairo",
                        fontWeight: FontWeight.w600
                      ),
                      ),
                    ),
                ],
              ),
            ),
              // ignore: avoid_unnecessary_containers
              Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "contact us1".tr(),
                    style:const TextStyle(
                      fontSize: 40,
                      color: Color(0xffFFBC00),
                      fontFamily: "Cairo",
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                    const SizedBox(height: 10),
                    TextButton(
                      onPressed: (){
                        Navigator.push(
                      context,
                      MaterialPageRoute(
                      builder: (context) => const MyMobileBody()));
                      },
                      child:const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.email_rounded,color: Colors.white,),
                          Text("info@fingerprintm.com",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontFamily: "Cairo",
                            fontWeight: FontWeight.w600
                          ),
                          ),
                        ],
                      ),
                    ),
                    TextButton(
                      onPressed: (){
                       //FlutterPhoneDirectCaller.callNumber('+201090844348');
                      launch('tel:+201090844348');
                      },
                      child:const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.call_rounded,color: Colors.white,),
                          Text("+201090844348",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontFamily: "Cairo",
                            fontWeight: FontWeight.w600
                          ),
                          ),
                        ],
                      ),
                    ),
                    MaterialButton(
                      onPressed: (){
                          launch('https://api.whatsapp.com/send/?phone=201090844348&text&type=phone_number&app_absent=0');
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 22,
                            height: 22,
                            child: Image.asset("assets/icons/shield.png",
                            color: Colors.white,
                            )),
                          Text("Communication Sites".tr(),
                          style:const TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontFamily: "Cairo",
                            fontWeight: FontWeight.w600
                          ),
                          ),
                        ],
                      ),
                    ),
                ],
              ),
            ),
              // ignore: avoid_unnecessary_containers
              Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Communication Sites1".tr(),
                    style:const TextStyle(
                    fontSize: 27,
                      color: Color(0xffFFBC00),
                      fontFamily: "Cairo",
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                    const SizedBox(height: 15),
                      Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextButton(
                            onPressed: (){
                              launch('https://www.facebook.com/fingerprintmedia1?mibextid=ZbWKwL');
                            },
                            // ignore: sized_box_for_whitespace
                            child: Container(
                              width: 25,
                              height: 25,
                              child: Image.asset("assets/icons/facebook (1).png",color: Colors.white,),
                            ),
                          ),
                          TextButton(
                            onPressed: (){
                              launch('https://twitter.com/?lang=ar');
                            },
                            // ignore: sized_box_for_whitespace
                            child: Container(
                              width: 25,
                              height: 25,
                              child: Image.asset("assets/icons/twitter-sign.png",color: Colors.white,),
                            ),
                          ),
                          TextButton(
                            onPressed: (){
                              launch('https://www.instagram.com/fingerprint_media_1/?igshid=ZDdkNTZiNTM%3D');
                            },
                            // ignore: sized_box_for_whitespace
                            child: Container(
                              width: 25,
                              height: 25,
                              child: Image.asset("assets/icons/instagram.png",color: Colors.white,),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextButton(
                            onPressed: (){
                              launch('https://www.linkedin.com/in/finger-print-2528361b1');
                            },
                            child: Container(
                              width: 25,
                              height: 25,
                              child: Image.asset("assets/icons/linkedin-logo.png",color: Colors.white,),
                            ),
                          ),
                          TextButton(
                            onPressed: (){
                              launch('https://www.snapchat.com/add/fingerprintm');
                            },
                            child: Container(
                              width: 25,
                              height: 25,
                              child: Image.asset("assets/icons/snapchat (1).png",color: Colors.white,),
                            ),
                          ),
                          TextButton(
                            onPressed: (){
                              launch('https://wa.me/201090844348');
                            },
                            child: Container(
                              width: 25,
                              height: 25,
                              child: Image.asset("assets/icons/whatsapp (1).png",color: Colors.white,),
                            ),
                          ),
                        ],
                      )
                ],
              ),
            ),
              ]
            )
          ),
          const SizedBox(height: 20,),

        ]
      ),
    );
  }
}



