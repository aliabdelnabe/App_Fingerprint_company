// ignore_for_file: non_constant_identifier_names

import 'package:arabic_english_app/screens/mobile_body.dart';
import 'package:arabic_english_app/screens/website%20_design%20_and_hosting.dart';
import 'package:arabic_english_app/widget/foter_bar.dart';
import 'package:arabic_english_app/widget/my_heardre_drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:localize_and_translate/localize_and_translate.dart';

class WhitAreTheDisadvantages extends StatefulWidget {
  const WhitAreTheDisadvantages({super.key});

  @override
  State<WhitAreTheDisadvantages> createState() => _WhitAreTheDisadvantagesState();
}

class _WhitAreTheDisadvantagesState extends State<WhitAreTheDisadvantages> {
  

  @override

  Widget build(BuildContext context) {
   // bool _obscureTex  = true;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      drawerScrimColor: Theme.of(context).selectedRowColor,
    backgroundColor: Theme.of(context).dividerColor,
      drawer: const MyHeadreDrawer(),
      appBar:AppBar(
        centerTitle: true,
    excludeHeaderSemantics: true,
    automaticallyImplyLeading: false,
    elevation: 8,
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
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  children:[
                   Container(
                    color: Colors.black,
                    width: double.infinity,
                    height: 200,
                    child:Image.asset(
                      "assets/images/breadcrumb.cad63821.jpeg",
                      fit: BoxFit.cover,
                      ) ,
                    ),
                  Positioned(
                    top: 5,
                    bottom: 5,
                    left: 0,
                    right: 0,
                  child: Column(
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
                        child:const Icon(Icons.home_outlined,
                        color: Colors.white,
                        size: 30,
                        ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                        ">>".tr(),
                      style:const TextStyle(
                        fontFamily: "Cairo",
                        fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.w600
                      ),
                      ),
                      const SizedBox(width: 10),
                            Text(
                        "blog".tr(),
                      style:const TextStyle(
                        fontFamily: "Cairo",
                        fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.w600
                      ),
                      ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                        ">>".tr(),
                      style:const TextStyle(
                        fontFamily: "Cairo",
                        fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.w600
                      ),
                      ),
                      const SizedBox(width: 10),
                            Text(
                        "What are the".tr(),
                      style:const TextStyle(
                        fontFamily: "Cairo",
                        fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.w600
                      ),
                      ),
                          ],
                        ),
                    ]
                  ),
            ),
            ],
          ),
          const SizedBox(height: 20,),
          Row(
          mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(width: 10),
              Container(
              decoration: BoxDecoration(
                color: Colors.amber,
              ),
                width: 120,
                height: 50,
                child:const Center(
                  child: Text(
                  "05-03-2023",
                    style: TextStyle(
                    fontSize: 20,
                    fontFamily: "Cairo",
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ],
        ),
          Container(
          width: width*0.95,
          child: Image.asset(
          "assets/images/622.jpg",
          fit: BoxFit.cover,
        ),
        ),
        const SizedBox(height: 25),
         Row(
          children: [
          const SizedBox(width: 10),
          const CircleAvatar(
          backgroundImage: AssetImage(
          "assets/images/624.jpg",
          ),
          backgroundColor: Colors.white,
          radius: 20,
        ),
        Text(" Taha Abdelmoneim",
        style: TextStyle(
        fontSize: 15,
        // ignore: deprecated_member_use
        color: Theme.of(context).toggleableActiveColor,
        fontFamily: "Cairo",
        fontWeight: FontWeight.w500
        ),
        ),
        const SizedBox(width: 10,),
          Text(
            "|",
            style: TextStyle(
            fontSize: 25,
            // ignore: deprecated_member_use
            color: Theme.of(context).toggleableActiveColor
          ),
        ),
        const SizedBox(width: 10),
        Container(
        width: 30,
        height: 30,
        child: Image.asset(
        "assets/icons/comment.png",
        fit: BoxFit.cover,
        // ignore: deprecated_member_use
        color: Theme.of(context).toggleableActiveColor
      ),
    ),
      Text(
      "comments".tr(),
      ),
    ],
  ),
  const SizedBox(height: 60,),
  Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      const SizedBox(width: 10),
      Text("What are the".tr(),
      style:const TextStyle(
        fontSize: 19,
        fontFamily: "Cairo",
        fontWeight: FontWeight.w600,
        color: Colors.amber
      ),
      ),
    ],
  ),
  const SizedBox(height: 60),
  Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(width: 10),
            Text(
              "1- Weak security".tr(),
              style:const TextStyle(
              fontSize: 17,
              fontFamily: "Cairo",
              fontWeight: FontWeight.w600,
              color: Colors.red
              ),
              ),
              
          ],
        ),
      ),
      const SizedBox(height: 25),
      Container(
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(width: 10),
            Text(
              "1- Weak security title".tr(),
              style: TextStyle(
              fontSize: 11,
              fontFamily: "Cairo",
              fontWeight: FontWeight.w600,
              color: Theme.of(context).toggleableActiveColor,
              ),
              ),
          ],
        ),
      ),
    ],
  ),
  const SizedBox(height: 20),
              Container(
          width: width*0.95,
          child: Image.asset(
          "assets/images/أهم-عيوب-الوورد-بريس.webp",
          fit: BoxFit.cover,
        ),
        ),
        const SizedBox(height: 15),
        Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(width: 10),
            Text(
              "2- Limitation of modification".tr(),
              style:const TextStyle(
              fontSize: 17,
              fontFamily: "Cairo",
              fontWeight: FontWeight.w600,
              color: Colors.red
              ),
              ),
              
          ],
        ),
      ),
      const SizedBox(height: 25),
      Container(
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(width: 10),
            Text(
              "2- Limitation of modification title".tr(),
              style: TextStyle(
              fontSize: 11,
              fontFamily: "Cairo",
              fontWeight: FontWeight.w600,
              color: Theme.of(context).toggleableActiveColor,
              ),
              ),
          ],
        ),
      ),
    ],
  ),

  const SizedBox(height: 15),
        Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(width: 10),
            Text(
              "3- Lots of updates".tr(),
              style:const TextStyle(
              fontSize: 17,
              fontFamily: "Cairo",
              fontWeight: FontWeight.w600,
              color: Colors.red
              ),
              ),
              
          ],
        ),
      ),
      const SizedBox(height: 25),
      Container(
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(width: 10),
            Text(
              "3- Lots of updates title".tr(),
              style: TextStyle(
              fontSize: 11,
              fontFamily: "Cairo",
              fontWeight: FontWeight.w600,
              color: Theme.of(context).toggleableActiveColor,
              ),
              ),
          ],
        ),
      ),
    ],
  ),
  const SizedBox(height: 20),
              Container(
          width: width*0.95,
          child: Image.asset(
          "assets/images/أهم-عيوب-الوورد-بريس2-23.webp",
          fit: BoxFit.cover,
        ),
        ),

        const SizedBox(height: 15),
        Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(width: 10),
            Text(
              "4- Slowness of the site".tr(),
              style:const TextStyle(
              fontSize: 17,
              fontFamily: "Cairo",
              fontWeight: FontWeight.w600,
              color: Colors.red
              ),
              ),
              
          ],
        ),
      ),
      const SizedBox(height: 25),
      Container(
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(width: 10),
            Text(
              "4- Slowness of the site title".tr(),
              style: TextStyle(
              fontSize: 11,
              fontFamily: "Cairo",
              fontWeight: FontWeight.w600,
              color: Theme.of(context).toggleableActiveColor,
              ),
              ),
          ],
        ),
      ),
    ],
  ),
  Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(width: 10),
            Text(
              "5- The sudden collapse of the site".tr(),
              style:const TextStyle(
              fontSize: 17,
              fontFamily: "Cairo",
              fontWeight: FontWeight.w600,
              color: Colors.red
              ),
              ),
              
          ],
        ),
      ),
      const SizedBox(height: 25),
      Container(
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(width: 10),
            Text(
              "5- The sudden collapse of the site title".tr(),
              style: TextStyle(
              fontSize: 11,
              fontFamily: "Cairo",
              fontWeight: FontWeight.w600,
              color: Theme.of(context).toggleableActiveColor,
              ),
              ),
          ],
        ),
      ),
    ],
  ),
  Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(width: 10),
            Text(
              "6- Compatibility".tr(),
              style:const TextStyle(
              fontSize: 17,
              fontFamily: "Cairo",
              fontWeight: FontWeight.w600,
              color: Colors.red
              ),
              ),
              
          ],
        ),
      ),
      const SizedBox(height: 25),
      Container(
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(width: 10),
            Text(
              "6- Compatibility title".tr(),
              style: TextStyle(
              fontSize: 11,
              fontFamily: "Cairo",
              fontWeight: FontWeight.w600,
              color: Theme.of(context).toggleableActiveColor,
              ),
              ),
          ],
        ),
      ),
    ],
  ),
  Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(width: 10),
            Text(
              "7- Maintenance".tr(),
              style:const TextStyle(
              fontSize: 17,
              fontFamily: "Cairo",
              fontWeight: FontWeight.w600,
              color: Colors.red
              ),
              ),
              
          ],
        ),
      ),
      const SizedBox(height: 25),
      Container(
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(width: 10),
            Text(
              "7- Maintenance title".tr(),
              style: TextStyle(
              fontSize: 11,
              fontFamily: "Cairo",
              fontWeight: FontWeight.w600,
              color: Theme.of(context).toggleableActiveColor,
              ),
              ),
          ],
        ),
      ),
    ],
  ),
  Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(width: 10),
            Text(
              "8- Technical support".tr(),
              style:const TextStyle(
              fontSize: 17,
              fontFamily: "Cairo",
              fontWeight: FontWeight.w600,
              color: Colors.red
              ),
              ),
              
          ],
        ),
      ),
      const SizedBox(height: 25),
      Container(
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(width: 10),
            Text(
              "8- Technical support title".tr(),
              style: TextStyle(
              fontSize: 11,
              fontFamily: "Cairo",
              fontWeight: FontWeight.w600,
              color: Theme.of(context).toggleableActiveColor,
              ),
              ),
          ],
        ),
      ),
    ],
  ),
  const SizedBox(height: 20),
              Container(
          width: width*0.95,
          child: Image.asset(
          "assets/images/أهم-عيوب-الوورد-بريس1.webp",
          fit: BoxFit.cover,
        ),
        ),
        const SizedBox(height: 60),
        TextButton(
          onPressed:() {
            Navigator.push(
            context,
            MaterialPageRoute(
            builder: (context) => const WebsiteDesignScreen()));
          }, 
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "section:".tr(),
                style: TextStyle(
                  color: Theme.of(context).toggleableActiveColor,
                  fontSize: 25,
                  fontFamily: "Cairo",
                  fontWeight: FontWeight.w800
                ),
              ),
              const SizedBox(width: 10),
              Text(
                "sirves".tr(),
                style:const TextStyle(
                  color: Colors.amber,
                  fontSize: 16,
                  fontFamily: "Cairo",
                  fontWeight: FontWeight.w600
                ),
                )
            ],
          )
          ),
          Container(
            width: width * 0.95,
            height: 0.5,
            color: Theme.of(context).toggleableActiveColor,
          ),
          const SizedBox(height: 20),
          Container(
            width: width * 0.95,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                    "comments".tr(),
                    style: TextStyle(
                  color: Theme.of(context).toggleableActiveColor,
                  fontSize: 22,
                  fontFamily: "Cairo",
                  fontWeight: FontWeight.w600
                ),
                    ),
              ],
            ),
          ),
          const SizedBox(height: 30),
          Container(
            width: width * 0.95,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                "Leave a response to this article".tr(),
                style:const TextStyle(
                  color: Colors.amber,
                  fontSize: 25,
                  fontFamily: "Cairo",
                  fontWeight: FontWeight.w600
                ),
                )
              ],
            ),
          ),
          const SizedBox(height: 30),
          Container(
            width: width * 0.95,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                    "When the admin approves your comment, it will appear".tr(),
                    style: TextStyle(
                  color: Theme.of(context).toggleableActiveColor,
                  fontSize: 12,
                  fontFamily: "Cairo",
                  fontWeight: FontWeight.w600
                ),
                    ),
              ],
            ),
          ),
          const SizedBox(height: 30),
          Container(
            width: width *0.95,
            padding: const EdgeInsets.only(
            right: 8,
            left: 8
            ),
            decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Theme.of(context).backgroundColor,
                                ),
                                child: TextFormField(
                                  minLines: 7,
                                  maxLines: 8,
                                  keyboardType: TextInputType.multiline,
                                  decoration: InputDecoration(
                                    hintText: "Write your review here...".tr(),
                                    hintStyle:const TextStyle(
                                      fontSize: 13,
                                      color: Colors.grey,
                                      fontFamily: "Cairo",
                                      fontWeight: FontWeight.w600
                                    ),
                                    border:const OutlineInputBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(10))
                                    ),
                                    enabledBorder: InputBorder.none,
                                                        focusedBorder: InputBorder.none,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 30),
                              Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shadowColor:Colors.white,
                              elevation:5,
                              backgroundColor:const Color.fromARGB(255, 255, 202, 58),
                            ),
                            onPressed: (){},
                            child: Text("Add a comment".tr(),
                             style:const TextStyle(
                          fontSize: 22,
                            fontFamily: "Cairo",
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                        ),
                            ),
                            ),
                        ],
                      ),

          const SizedBox(height: 60,),
          SizedBox(width: 20,),
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
            );
          },
        ),
      ),
    ],
  ),
    );
  }
}