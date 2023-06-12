import 'package:arabic_english_app/screens/mobile_body.dart';
import 'package:arabic_english_app/widget/foter_bar.dart';
import 'package:arabic_english_app/widget/my_heardre_drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:localize_and_translate/localize_and_translate.dart';

class SocialMediaManagement extends StatelessWidget {
  const SocialMediaManagement({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    Size size = MediaQuery.of(context).size;
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
                    height: 70,
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
                        child:const Icon(Icons.home_outlined,
                        color: Colors.white,
                        ),
                        ),
                        const Text(
                        ">>",
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 13,
                          fontFamily: "Cairo"
                        ),
                        ),
                        const SizedBox(width: 2),
                        Text(
                        "Services".tr(),
                      style:const TextStyle(
                        fontFamily: "Cairo",
                        fontSize: 14,
                        color: Colors.white,
                        fontWeight: FontWeight.w600
                      ),
                      ),
                      const SizedBox(width: 2),
                       const Text(
                        ">>",
                        style: TextStyle(
                          fontSize: 13,
                          fontFamily: "Cairo",
                          color: Colors.white
                        ),
                        ),
                        const SizedBox(width: 5),
                        Text("text7".tr(),
                            style:const TextStyle(
                            fontSize: 13,
                            color: Colors.white,
                            fontWeight: FontWeight.w700
                      ),
                      ),
                    ]
                  ),
            ),
            ],
          ),
          const SizedBox(height: 60,),
          Container(
            height: size.height * 1,
            width: size.width * 0.93,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius:const BorderRadius.only(
                    topLeft: Radius.circular(18),
                    topRight: Radius.circular(18),
                  ),
                  child: Image.asset(
                    "assets/images/Social5.png",
                    fit: BoxFit.cover,
                    filterQuality:FilterQuality.high,
                    scale: 1,
                    width: size.width ,
                    height: size.height*0.60 ,
                  ),
                ),
                Container(
                  height: 300,
                  width: size.width * 0.93,
                  decoration: BoxDecoration(
                    borderRadius:const BorderRadius.only(
                      bottomLeft: Radius.circular(18),
                      bottomRight: Radius.circular(18),
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
                            child: Text("yspace".tr()
                            ,style: TextStyle(
                              fontSize: 20,
                              fontFamily: "Cairo",
                              color: Theme.of(context).unselectedWidgetColor
                            ),
                            )),
                            TextButton(
                              onPressed: null,
                              child: Text("yspace2".tr(),
                              overflow: TextOverflow.clip,
                              style: TextStyle(
                                fontSize:14,
                                fontFamily: "Cairo",
                                color: Theme.of(context).canvasColor,
                                fontWeight: FontWeight.w600
                              ),
                              ),
                            ),
                        ],
                      ),
                      ElevatedButton(
                          onPressed: (){},
                        style: ElevatedButton.styleFrom(
                          maximumSize:size /2,
                          backgroundColor: const Color(0xffffbc01),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                             const Icon(Icons.arrow_back),
                            Text("bottonyspace".tr(),
                            overflow: TextOverflow.clip,
                            style:const TextStyle(
                              fontSize: 15,
                              fontFamily: "Cairo",
                              fontWeight: FontWeight.w700,
                              color: Colors.white
                            ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 80),
          Container(
            height: 500,
            width: size.width * 0.93,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius:const BorderRadius.only(
                    topLeft: Radius.circular(18),
                    topRight: Radius.circular(18),
                  ),
                  child: Image.asset(
                    "assets/images/Social3.png",
                    fit: BoxFit.cover,
                    filterQuality:FilterQuality.high,
                    width: size.width * 0.93,
                    height: size.height * 0.20,
                  ),
                ),
                Container(
                  height: 300,
                  width: size.width * 0.93,
                  decoration: BoxDecoration(
                    borderRadius:const BorderRadius.only(
                      bottomLeft: Radius.circular(18),
                      bottomRight: Radius.circular(18),
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
                            child: Text("yspace".tr()
                            ,style: TextStyle(
                              fontSize: 20,
                              fontFamily: "Cairo",
                              color: Theme.of(context).unselectedWidgetColor
                            ),
                            )),
                            TextButton(
                              onPressed: null,
                              child: Text("yspace2".tr(),
                              overflow: TextOverflow.clip,
                              style: TextStyle(
                                fontSize:14,
                                fontFamily: "Cairo",
                                color: Theme.of(context).canvasColor,
                                fontWeight: FontWeight.w600
                              ),
                              ),
                            ),
                        ],
                      ),
                      ElevatedButton(
                          onPressed: (){},
                        style: ElevatedButton.styleFrom(
                          maximumSize:size /2,
                          backgroundColor: const Color(0xffffbc01),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                             const Icon(Icons.arrow_back),
                            Text("bottonyspace".tr(),
                            overflow: TextOverflow.clip,
                            style:const TextStyle(
                              fontSize: 15,
                              fontFamily: "Cairo",
                              fontWeight: FontWeight.w700,
                              color: Colors.white
                            ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 80),
          Container(
            height: 700,
            width: size.width * 0.93,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius:const BorderRadius.only(
                    topLeft: Radius.circular(18),
                    topRight: Radius.circular(18),
                  ),
                  child: Image.asset(
                    "assets/images/Social4.png",
                    fit: BoxFit.cover,
                    filterQuality:FilterQuality.high,
                    width: size.width * 0.93,
                    height: size.height * 0.45,
                  ),
                ),
                Container(
                  height: 300,
                  width: size.width * 0.93,
                  decoration: BoxDecoration(
                    borderRadius:const BorderRadius.only(
                      bottomLeft: Radius.circular(18),
                      bottomRight: Radius.circular(18),
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
                            child: Text("yspace".tr()
                            ,style: TextStyle(
                              fontSize: 20,
                              fontFamily: "Cairo",
                              color: Theme.of(context).unselectedWidgetColor
                            ),
                            )),
                            TextButton(
                              onPressed: null,
                              child: Text("yspace2".tr(),
                              overflow: TextOverflow.clip,
                              style: TextStyle(
                                fontSize:14,
                                fontFamily: "Cairo",
                                color: Theme.of(context).canvasColor,
                                fontWeight: FontWeight.w600
                              ),
                              ),
                            ),
                        ],
                      ),
                      ElevatedButton(
                          onPressed: (){},
                        style: ElevatedButton.styleFrom(
                          maximumSize:size /2,
                          backgroundColor: const Color(0xffffbc01),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                             const Icon(Icons.arrow_back),
                            Text("bottonyspace".tr(),
                            overflow: TextOverflow.clip,
                            style:const TextStyle(
                              fontSize: 15,
                              fontFamily: "Cairo",
                              fontWeight: FontWeight.w700,
                              color: Colors.white
                            ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 80),
          Container(
            height: size.height * 1,
            width: size.width * 0.93,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius:const BorderRadius.only(
                    topLeft: Radius.circular(18),
                    topRight: Radius.circular(18),
                  ),
                  child: Image.asset(
                    "assets/images/Social1.png",
                    fit: BoxFit.cover,
                    filterQuality:FilterQuality.high,
                    width: size.width* 0.93,
                    height: size.height * 0.60,
                  ),
                ),
                Container(
                  height: 300,
                  width: size.width * 0.93,
                  decoration: BoxDecoration(
                    borderRadius:const BorderRadius.only(
                      bottomLeft: Radius.circular(18),
                      bottomRight: Radius.circular(18),
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
                            child: Text("yspace".tr()
                            ,style: TextStyle(
                              fontSize: 20,
                              fontFamily: "Cairo",
                              color: Theme.of(context).unselectedWidgetColor
                            ),
                            )),
                            TextButton(
                              onPressed: null,
                              child: Text("yspace2".tr(),
                              overflow: TextOverflow.clip,
                              style: TextStyle(
                                fontSize:14,
                                fontFamily: "Cairo",
                                color: Theme.of(context).canvasColor,
                                fontWeight: FontWeight.w600
                              ),
                              ),
                            ),
                        ],
                      ),
                      ElevatedButton(
                          onPressed: (){},
                        style: ElevatedButton.styleFrom(
                          maximumSize:size /2,
                          backgroundColor: const Color(0xffffbc01),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                             const Icon(Icons.arrow_back),
                            Text("bottonyspace".tr(),
                            overflow: TextOverflow.clip,
                            style:const TextStyle(
                              fontSize: 15,
                              fontFamily: "Cairo",
                              fontWeight: FontWeight.w700,
                              color: Colors.white
                            ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 80),
          Container(
            height: size.height * 1,
            width: size.width * 0.93,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius:const BorderRadius.only(
                    topLeft: Radius.circular(18),
                    topRight: Radius.circular(18),
                  ),
                  child: Image.asset(
                    "assets/images/Social2.png.png",
                    fit: BoxFit.cover,
                    filterQuality:FilterQuality.high,
                  ),
                ),
                Container(
                  height: 300,
                  width: size.width * 0.93,
                  decoration: BoxDecoration(
                    borderRadius:const BorderRadius.only(
                      bottomLeft: Radius.circular(18),
                      bottomRight: Radius.circular(18),
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
                            child: Text("yspace".tr()
                            ,style: TextStyle(
                              fontSize: 20,
                              fontFamily: "Cairo",
                              color: Theme.of(context).unselectedWidgetColor
                            ),
                            )),
                            TextButton(
                              onPressed: null,
                              child: Text("yspace2".tr(),
                              overflow: TextOverflow.clip,
                              style: TextStyle(
                                fontSize:14,
                                fontFamily: "Cairo",
                                color: Theme.of(context).canvasColor,
                                fontWeight: FontWeight.w600
                              ),
                              ),
                            ),
                        ],
                      ),
                      ElevatedButton(
                          onPressed: (){},
                        style: ElevatedButton.styleFrom(
                          maximumSize:size /2,
                          backgroundColor: const Color(0xffffbc01),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                             const Icon(Icons.arrow_back),
                            Text("bottonyspace".tr(),
                            overflow: TextOverflow.clip,
                            style:const TextStyle(
                              fontSize: 15,
                              fontFamily: "Cairo",
                              fontWeight: FontWeight.w700,
                              color: Colors.white
                            ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 80),
              ],
            ),
          ),
          const SizedBox(height: 60,),
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
      )
    ],
  ),
    );
  }
}