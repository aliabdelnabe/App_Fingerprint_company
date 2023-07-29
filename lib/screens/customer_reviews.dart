import 'package:arabic_english_app/screens/mobile_body.dart';
import 'package:arabic_english_app/widget/carousel_screen2.dart';
import 'package:arabic_english_app/widget/foter_bar.dart';
import 'package:arabic_english_app/widget/my_heardre_drawer.dart';
import 'package:arabic_english_app/widget/social_media_widget.dart';
import 'package:arabic_english_app/widget/write_review.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:url_launcher/url_launcher.dart';

class CustomerReviews extends StatefulWidget {
  const CustomerReviews({super.key});

  @override
  State<CustomerReviews> createState() => _CustomerReviewsState();
}

class _CustomerReviewsState extends State<CustomerReviews> {
  List <String> itemsList = [
    "Section",
    "Website design and hosting",
    "content writing",
    "Design and devielpment",
    "Social Media designs",
    "Advertising photography",
    "advertisements",
    "Motion Graphic",
    ];
  String? selectedItem = "Section";
  TextEditingController
  _textController =
  TextEditingController();
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
            child: InkWell(
              onTap:(){
                Navigator.push(
                      context,
                      MaterialPageRoute(
                      builder: (context) => const MyMobileBody()));
              },
              child: const Image(
              image: AssetImage("assets/images/logo-transparent.png"),
              color: Colors.white,
                      ),
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
          physics: const BouncingScrollPhysics(),
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
            child:const WriteReview(),
          ),
          const SizedBox(height: 140),
          Container(
            width: double.infinity,
            height: 680,
            decoration: BoxDecoration(
              color: Theme.of(context).dividerColor
            ),
            child: Column(
              children: [
                const SizedBox(height: 60),
                Text(
                  "customer reviews".tr(),
                  style: TextStyle(
                    fontSize: 30,
                    fontFamily: "Cairo",
                    fontWeight: FontWeight.w700,
                    color: Theme.of(context).primaryColorLight,
                  ),
                ),
                Container(
                  width: 160,
                  height: 1.5,
                  color:const Color(0xFFFFBC01),
                ),
                const SizedBox(height: 40),
                  const CarouselScreen2(),
                  const SizedBox(height: 25),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                              backgroundColor:const Color.fromARGB(255, 255, 202, 58),
                            ),
                    onPressed: (){
                      Navigator.push(context,
                      MaterialPageRoute(
                                builder: (context) =>  CustomerReviews()));
                    },
                    child:Container(
                      width: width*0.40,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                            Image.asset(
                              "assets/icons/write (1).png",
                              height: 25,
                              width: 25,
                              fit: BoxFit.cover,
                              color: Colors.white,
                              ),
                              const SizedBox(width: 4),
                              Text(
                            "Write a review".tr(),
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: width / 21,
                              fontFamily: "Cairo",
                              fontWeight: FontWeight.bold
                            ),
                            ),
                        ],
                      ),
                    ),
                    ),
              ],
            ),
          ),
          const SizedBox(height: 0,),
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


