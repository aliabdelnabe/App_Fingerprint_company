// ignore_for_file: non_constant_identifier_names

import 'package:arabic_english_app/screens/mobile_body.dart';
import 'package:arabic_english_app/screens/website%20_design%20_and_hosting.dart';
import 'package:arabic_english_app/widget/foter_bar.dart';
import 'package:arabic_english_app/widget/my_heardre_drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:localize_and_translate/localize_and_translate.dart';

class AdvantagesOfCreatingASpecialProgrammingWebsite extends StatefulWidget {
  const AdvantagesOfCreatingASpecialProgrammingWebsite({super.key});

  @override
  State<AdvantagesOfCreatingASpecialProgrammingWebsite> createState() => _AdvantagesOfCreatingASpecialProgrammingWebsiteState();
}

class _AdvantagesOfCreatingASpecialProgrammingWebsiteState extends State<AdvantagesOfCreatingASpecialProgrammingWebsite> {
  

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
                      style:
                       TextStyle(
                        fontFamily: "Cairo",
                        fontSize: width*0.090,
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
                        "Advantages of creating".tr(),
                      style: TextStyle(
                        fontFamily: "Cairo",
                        fontSize: width*0.060,
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
              decoration:const BoxDecoration(
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
          "assets/images/623.jpg",
          fit: BoxFit.cover,
          filterQuality: FilterQuality.high,
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
        fontSize: width*0.040,
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
            fontSize: width*0.060,
            // ignore: deprecated_member_use
            color: Theme.of(context).toggleableActiveColor
          ),
        ),
        const SizedBox(width: 5),
        Container(
        width: width*0.1,
        height: width*0.1,
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
     Text("Advantages of creating".tr(),
      style: TextStyle(
        fontSize: width*0.065,
        fontFamily: "Cairo",
        fontWeight: FontWeight.w600,
        color: Colors.amber
      ),
      ),
    ],
  ),
  const SizedBox(height: 20),
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
              "Advantages of creating title1".tr(),
              style: TextStyle(
              fontSize: width*0.032,
              fontFamily: "Cairo",
              fontWeight: FontWeight.w600,
              color: Theme.of(context).toggleableActiveColor,
              ),
              ),
          ],
        ),
      ),
      Container(
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(width: 10),
            Text(
              "Advantages of creating title2".tr(),
              style: TextStyle(
              fontSize: width*0.032,
              fontFamily: "Cairo",
              fontWeight: FontWeight.w600,
              color: Colors.green,
              ),
              ),
          ],
        ),
      ),
      Container(
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(width: 10),
            Text(
              "Advantages of creating title3".tr(),
              style: TextStyle(
              fontSize: width*0.032,
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
          "assets/images/pexels-photo-270348.jpeg",
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
              "1- Flexibility".tr(),
              style: TextStyle(
              fontSize: width*0.055,
              fontFamily: "Cairo",
              fontWeight: FontWeight.w600,
              color: Colors.purple
              ),
              ),
              
          ],
        ),
      ),
      const SizedBox(height: 5),
      Container(
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(width: 10),
            Text(
              "1- Flexibility title".tr(),
              style: TextStyle(
              fontSize: width*0.031,
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
              "2- Performance".tr(),
              style: TextStyle(
              fontSize: width*0.055,
              fontFamily: "Cairo",
              fontWeight: FontWeight.w600,
              color: Colors.purple
              ),
              ),
              
          ],
        ),
      ),
      const SizedBox(height: 5),
      Container(
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(width: 10),
            Text(
              "2- Performance title".tr(),
              style: TextStyle(
              fontSize: width*0.031,
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
              "3- Safety".tr(),
              style: TextStyle(
              fontSize: width*0.055,
              fontFamily: "Cairo",
              fontWeight: FontWeight.w600,
              color: Colors.purple
              ),
              ),
              
          ],
        ),
      ),
      const SizedBox(height: 5),
      Container(
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(width: 10),
            Text(
              "3- Safety title".tr(),
              style: TextStyle(
              fontSize: width*0.031,
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
              "4- Ease of maintenance".tr(),
              style: TextStyle(
              fontSize: width*0.055,
              fontFamily: "Cairo",
              fontWeight: FontWeight.w600,
              color: Colors.purple
              ),
              ),
              
          ],
        ),
      ),
      const SizedBox(height: 5),
      Container(
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(width: 10),
            Text(
              "4- Ease of maintenance title".tr(),
              style: TextStyle(
              fontSize: width*0.031,
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
          "assets/images/pexels-photo-574071.webp",
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
              "5- Complete control".tr(),
              style: TextStyle(
              fontSize: width*0.055,
              fontFamily: "Cairo",
              fontWeight: FontWeight.w600,
              color: Colors.purple
              ),
              ),
              
          ],
        ),
      ),
      const SizedBox(height: 5),
      Container(
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(width: 10),
            Text(
              "5- Complete control title".tr(),
              style: TextStyle(
              fontSize: width*0.031,
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
              "6- Personalization".tr(),
              style: TextStyle(
              fontSize: width*0.055,
              fontFamily: "Cairo",
              fontWeight: FontWeight.w600,
              color: Colors.purple
              ),
              ),
              
          ],
        ),
      ),
      const SizedBox(height: 5),
      Container(
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(width: 10),
            Text(
              "6- Personalization title".tr(),
              style: TextStyle(
              fontSize: width*0.031,
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
              "7- Innovation".tr(),
              style: TextStyle(
              fontSize: width*0.055,
              fontFamily: "Cairo",
              fontWeight: FontWeight.w600,
              color: Colors.purple
              ),
              ),
              
          ],
        ),
      ),
      const SizedBox(height: 5),
      Container(
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(width: 10),
            Text(
              "7- Innovation title".tr(),
              style: TextStyle(
              fontSize: width*0.031,
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
              "8- Speed".tr(),
              style: TextStyle(
              fontSize: width*0.055,
              fontFamily: "Cairo",
              fontWeight: FontWeight.w600,
              color: Colors.purple
              ),
              ),
              
          ],
        ),
      ),
      const SizedBox(height: 5),
      Container(
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(width: 10),
            Text(
              "8- Speed title".tr(),
              style: TextStyle(
              fontSize: width*0.031,
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
              "9- SEO search engine optimization".tr(),
              style: TextStyle(
              fontSize: width*0.055,
              fontFamily: "Cairo",
              fontWeight: FontWeight.w600,
              color: Colors.purple
              ),
              ),
              
          ],
        ),
      ),
      const SizedBox(height: 5),
      Container(
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(width: 10),
            Text(
              "9- SEO search engine optimization title".tr(),
              style: TextStyle(
              fontSize: width*0.031,
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
          "assets/images/pexels-photo-1181263.webp",
          fit: BoxFit.cover,
        ),
        ),
        Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const SizedBox(height: 15),
      Container(
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(width: 10),
            Text(
              "end".tr(),
              style: TextStyle(
              fontSize: width*0.031,
              fontFamily: "Cairo",
              fontWeight: FontWeight.w600,
              color: Theme.of(context).toggleableActiveColor,
              ),
              ),
          ],
        ),
      ),
      Container(
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(width: 10),
            Text(
              "end2".tr(),
              style: TextStyle(
              fontSize: width*0.031,
              fontFamily: "Cairo",
              fontWeight: FontWeight.w600,
              color: Theme.of(context).toggleableActiveColor,
              ),
              ),
          ],
        ),
      ),
      Container(
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(width: 10),
            Text(
              "end3".tr(),
              style: TextStyle(
              fontSize: width*0.031,
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
                  fontSize: width*0.055,
                  fontFamily: "Cairo",
                  fontWeight: FontWeight.w800
                ),
              ),
              const SizedBox(width: 10),
              Text(
                "sirves".tr(),
                style: TextStyle(
                  color: Colors.amber,
                  fontSize: width*0.050,
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