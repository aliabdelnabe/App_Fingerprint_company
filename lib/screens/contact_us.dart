import 'package:arabic_english_app/screens/mobile_body.dart';
import 'package:arabic_english_app/widget/foter_bar.dart';
import 'package:arabic_english_app/widget/my_heardre_drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:localize_and_translate/localize_and_translate.dart';

class ContactUs extends StatefulWidget {
  const ContactUs({super.key});

  @override
  State<ContactUs> createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    Size size = MediaQuery.of(context).size;
    return Scaffold(
            drawerScrimColor: Theme.of(context).selectedRowColor,
     backgroundColor: Theme.of(context).disabledColor,
      drawer: const MyHeadreDrawer(),
      appBar:AppBar(
        centerTitle: true,
    excludeHeaderSemantics: true,
    automaticallyImplyLeading: false,
    elevation: 5,
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
                    width: double.infinity,
                    height: 70,
                     color:Theme.of(context).primaryColorDark,
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
                          fontSize: 14,
                          fontFamily: "Cairo",
                          fontWeight: FontWeight.w600,
                          color: Theme.of(context).canvasColor
                        ),
                        ),
                        const SizedBox(width: 8),
                        Text(
                        "customer reviews".tr(),
                      style: TextStyle(
                        fontFamily: "Cairo",
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color:  Theme.of(context).canvasColor
                      ),
                      ),
                      const SizedBox(width: 2),
                    ]
                  ),
            ),
            ],
          ),
          const SizedBox(height: 40,),
          Container(
              width: width * 0.95,
            height: 1500,
              child: Column(
              children: [
                ClipRRect(
                  borderRadius:const BorderRadius.only(
                    topLeft: Radius.circular(18),
                    topRight: Radius.circular(18),
                  ),
                  child: Image.asset(
                    "assets/images/login_small.39998a84.png",
                    fit: BoxFit.cover,
                    filterQuality:FilterQuality.high,
                  ),
                ),
                Container(
                    height: 740,
                    width: width * 0.94,
                    decoration: BoxDecoration(
                      boxShadow:const [
                        BoxShadow(
                          offset: Offset(0, 0),
                          blurRadius: 5
                        )
                      ],
                      borderRadius:const BorderRadius.only(
                        bottomLeft: Radius.circular(25),
                        bottomRight: Radius.circular(25),
                      ),
                        color:Theme.of(context).dividerColor,
                    ),
                    child: Column(
                      children: [
                        const SizedBox(height: 25,),
                              Text("Write your review".tr()
                              ,style: TextStyle(
                                fontSize: 30,
                                fontFamily: "Cairo",
                                fontWeight: FontWeight.w800,
                                color: Theme.of(context).primaryColorLight
                              ),
                              ),
                              const SizedBox(height: 40,),
                        Container(
                          width: size.width*0.80,
                          child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Message Title".tr(),
                                style: TextStyle(
                                  fontSize: 15,
                                   fontWeight: FontWeight.w600,
                                  color: Theme.of(context).canvasColor,
                                  fontFamily: "Cairo"
                                ),
                              ),
                              const SizedBox(height: 5,),
                              Row(
                  children: [
                     Expanded(
                      child: Container(
                        padding: const EdgeInsets.only(
                          right: 10,
                          left: 10
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Theme.of(context).backgroundColor,
                        ),
                        child:  TextField(
                        decoration: InputDecoration(
                          hintText: "title".tr(),
                          hintStyle:const TextStyle(
                            color: Colors.grey,
                          ),
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                        ),
                      ),
                        ),
                      ),
                  ],
                              ),
                              const SizedBox(height: 20),
                              Text(
                                "Message".tr(),
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                  color: Theme.of(context).canvasColor,
                                  fontFamily: "Cairo"
                                ),
                              ),
                              const SizedBox(height: 5,),
                              Container(
                                padding: const EdgeInsets.only(
                                  right: 8,
                                  left: 8
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  // ignore: deprecated_member_use
                                  color: Theme.of(context).backgroundColor,
                                ),
                                child: TextFormField(
                                  minLines: 7,
                                  maxLines: 8,
                                  keyboardType: TextInputType.multiline,
                                  decoration: InputDecoration(
                                    hintText: "Write your message here...".tr(),
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
                  const SizedBox(height: 15,),
                            ],
                          ),
                        ),
                        // زر الارسال
                        Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor:const Color.fromARGB(255, 255, 202, 58),
                            ),
                            onPressed: (){},
                            child: Text("send".tr(),
                             style:const TextStyle(
                          fontSize: 17,
                            fontFamily: "Cairo",
                            fontWeight: FontWeight.w900,
                            color: Color.fromARGB(255, 109, 78, 172),
                        ),
                            ),
                            ),
                        ],
                      ),
                      const SizedBox(height:20 ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                      // رقم الهاتف الشركه
                      // ignore: sized_box_for_whitespace
                      Container(
                        width: double.infinity,
                        child: 
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                TextButton(
                                  onPressed: (){},
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("201090844348",
                                      style: TextStyle(
                                        color: Theme.of(context).indicatorColor,
                                        fontSize: 20,
                                        fontFamily: "Cairo",
                                        fontWeight: FontWeight.w700
                                      ),
                                      ),
                                      Icon(Icons.call_rounded,color: Theme.of(context).indicatorColor,),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                      ),
                      //تواصل معنا
                      Container(
                        width: double.infinity,
                        child: 
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                TextButton(
                                  onPressed: (){},
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("info@fingerprintm.com",
                                      style: TextStyle(
                                        color: Theme.of(context).indicatorColor,
                                        fontSize: 20,
                                        fontFamily: "Cairo",
                                        fontWeight: FontWeight.w700
                                      ),
                                      ),
                                      Icon(Icons.email_rounded,color:Theme.of(context).indicatorColor,),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                      ),
                      // مواقع التواصل
                      const SizedBox(height: 6),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                
                                TextButton(
                              onPressed: (){},
                              child: Container(
                                width: 25,
                                height: 25,
                                child: Image.asset("assets/icons/facebook (1).png",color: Theme.of(context).canvasColor,),
                              ),
                            ),
                            TextButton(
                              onPressed: (){},
                              child: Container(
                                width: 25,
                                height: 25,
                                child: Image.asset("assets/icons/twitter-sign.png",color: Theme.of(context).canvasColor,),
                              ),
                            ),
                            TextButton(
                              onPressed: (){},
                              child: Container(
                                width: 25,
                                height: 25,
                                child: Image.asset("assets/icons/instagram.png",color: Theme.of(context).canvasColor,),
                              ),
                            ),
                              ],
                            ),
                            const SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [TextButton(
                              onPressed: (){},
                              child: Container(
                                width: 25,
                                height: 25,
                                child: Image.asset("assets/icons/linkedin-logo.png",color:Theme.of(context).canvasColor,),
                              ),
                            ),
                            TextButton(
                              onPressed: (){},
                              child: Container(
                                width: 25,
                                height: 25,
                                child: Image.asset("assets/icons/snapchat (1).png",color: Theme.of(context).canvasColor,),
                              ),
                            ),
                            TextButton(
                              onPressed: (){},
                              child: Container(
                                width: 25,
                                height: 25,
                                child: Image.asset("assets/icons/whatsapp (1).png",color: Theme.of(context).canvasColor,),
                              ),
                            ),],
                            )
                            
                          ],
                        )
                      ],
                        ),
                      ],
                    ),
                  ),
              ],
              ),
          ),
          const SizedBox(height: 50,),
          FooterBar()
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