import 'package:arabic_english_app/widget/Content%20writing.dart';
import 'package:arabic_english_app/widget/TheNumberOfExperiencedClients.dart';
import 'package:arabic_english_app/widget/after_sales_services.dart';
import 'package:arabic_english_app/widget/carousel_screen.dart';
import 'package:arabic_english_app/widget/carousel_screen3.dart';
import 'package:arabic_english_app/widget/fingerprint_services.dart';
import 'package:arabic_english_app/widget/fingerprint_services_1.dart';
import 'package:arabic_english_app/widget/fingerprint_services_2.dart';
import 'package:arabic_english_app/widget/fingerprint_services_3.dart';
import 'package:arabic_english_app/widget/fingerprint_services_4.dart';
import 'package:arabic_english_app/widget/fingerprint_services_5.dart';
import 'package:arabic_english_app/widget/fingerprint_services_6.dart';
import 'package:arabic_english_app/widget/fingerprint_services_7.dart';
import 'package:arabic_english_app/widget/fingerprint_services_8.dart';
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

                    const SizedBox(height: 20),

                    Container(
                      width: double.infinity,

                      decoration: BoxDecoration(
                        color: Theme.of(context).hintColor,
                      ),
                      child: Column(
                        children: [
                          Container(
                            width: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const SizedBox(height: 40),
                                Text(
                                              "Fingerprint Service".tr(),
                                              style: TextStyle(
                            fontSize: 30,
                            fontFamily: "Cairo",
                            fontWeight: FontWeight.w700,
                            color: Theme.of(context).primaryColorLight,
                                              ),
                                            ),
                                            Container(
                                              width: 180,
                                              height: 1.5,
                                              color: const Color(0xFFFFBC01),
                                            ),
                                            const SizedBox(height: 30),
                                            Text(
                                              "integrated service".tr(),
                                              style: TextStyle(
                            fontSize: 23,
                            fontFamily: "Cairo",
                            fontWeight: FontWeight.w600,
                            color: Theme.of(context).primaryColorLight,
                                              ),
                                            ),
                                            Text(
                                            "strategies".tr(),
                                              style: TextStyle(
                            fontSize: 23,
                            fontFamily: "Cairo",
                            fontWeight: FontWeight.w600,
                            color: Theme.of(context).primaryColorLight,
                                              ),
                                            ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 40),
                          FingerprintServices(width: width),
                          const SizedBox(height: 40),
                          FingerprintServices1(width: width),
                          const SizedBox(height: 40),
                          FingerprintServices2(width: width),
                          const SizedBox(height: 40),
                          FingerprintServices3(width: width),
                          const SizedBox(height: 40),
                          FingerprintServices4(width: width),
                          const SizedBox(height: 40),
                          FingerprintServices5(width: width),
                          const SizedBox(height: 40),
                          FingerprintServices6(width: width),
                          const SizedBox(height: 40),
                          FingerprintServices7(width: width),
                          const SizedBox(height: 40),
                          FingerprintServices8(width: width),
                          const SizedBox(height: 40),
                        ],
                      ),
                    ),
                    const TheNumberOfExperiencedClients(),
                    const CarouselScreen3(),
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
