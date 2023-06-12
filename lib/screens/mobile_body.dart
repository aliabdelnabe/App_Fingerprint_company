import 'package:arabic_english_app/widget/Content%20writing.dart';
import 'package:arabic_english_app/widget/after_sales_services.dart';
import 'package:arabic_english_app/widget/carousel_screen.dart';
import 'package:arabic_english_app/widget/foter_bar.dart';
import 'package:arabic_english_app/widget/my_heardre_drawer.dart';
import 'package:arabic_english_app/widget/we_are_on_time.dart';
import 'package:arabic_english_app/widget/we_create_great.dart';
import 'package:arabic_english_app/widget/we_value_integity.dart';
import 'package:arabic_english_app/widget/you_speak.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:localize_and_translate/localize_and_translate.dart';

class MyMobileBody extends StatelessWidget {
  const MyMobileBody({super.key,});

  @override
  Widget build(BuildContext context) {
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
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 1,
              itemBuilder:(context, index) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const CarouselScreen(),
                    const SizedBox(height: 60),
                    YouSpeak(width: width),
                    WeValueIntegrity(width: width),
                    ContentWriting(width: width),
                    WeCreatGreat(width: width),
                    WeAreOnTime(width: width),
                    AfterSalesServices(width: width),
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
