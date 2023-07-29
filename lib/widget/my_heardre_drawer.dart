// ignore_for_file: sort_child_properties_last

import 'package:arabic_english_app/constens/defults.dart';
import 'package:arabic_english_app/screens/about.dart';
import 'package:arabic_english_app/screens/blog.dart';
import 'package:arabic_english_app/screens/contact_us.dart';
import 'package:arabic_english_app/screens/customer_reviews.dart';
import 'package:arabic_english_app/controller/log_in.dart';
import 'package:arabic_english_app/screens/mobile_body.dart';
import 'package:arabic_english_app/controller/register.dart';
import 'package:arabic_english_app/screens/website%20_design%20_and_hosting.dart';
import 'package:arabic_english_app/them.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

String stringResponse = "";
Map<String, dynamic> mapResponse = {};
Map<String, dynamic> dataResponse = {};
List listResponse = [];



// ignore: non_constant_identifier_names
var indexClicked = 0;

class MyHeadreDrawer extends StatefulWidget {
  const MyHeadreDrawer({super.key});

  @override
  State<MyHeadreDrawer> createState() => _MyHeadreDrawerState();
}

class _MyHeadreDrawerState extends State<MyHeadreDrawer> {
  Future apicall() async {
    http.Response response;
    response = await http.get(Uri.parse(
        "https://backend.fingerprintm.com/api/getSections?active=true"));
    if (response.statusCode == 200) {
      setState(() {
        mapResponse = json.decode(response.body);
        listResponse = mapResponse["data"];
      });
    }
  }

  @override
  void initState() {
    apicall();
    super.initState();
  }

  int selected1 = 0;
  void currwnPage1(int index) {
    setState(() {
      selected1 = index;
    });
  }

  bool click = true;
  bool _bool = true;
  bool selected = true;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    // ignore: non_constant_identifier_names
    final PositionShadow = click ? -10.0 : -40.0;
    return Drawer(
      backgroundColor: Theme.of(context).dividerColor,
      shadowColor: Theme.of(context).selectedRowColor,
      elevation: 80,
      child: Expanded(
        child: ListView.builder(
            shrinkWrap: true,
            physics: const BouncingScrollPhysics(),
            itemCount: 1,
            itemBuilder: (context, index) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 25,
                  ),
                  Container(
                    padding: const EdgeInsets.all(15),
                    height: 120,
                    decoration: const BoxDecoration(),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            height: 60,
                            width: 80,
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const MyMobileBody()));
                              },
                              child: Image.asset(
                                "assets/images/logo.png",
                                fit: BoxFit.cover,
                              ),
                            )),
                        IconButton(
                            onPressed: () {
                              Navigator.pop(
                                context,
                              );
                            },
                            icon: Image.asset(
                                "assets/icons/close-square-rounded-interface-symbol-with-a-cross.png",
                                color: Theme.of(context).canvasColor)),
                      ],
                    ),
                  ),
                  Divider(
                    color: Theme.of(context).canvasColor,
                    height: 10,
                    thickness: 0.5,
                    indent: 3,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ListTile(
                        onTap: () {
                          indexClicked = 0;
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const MyMobileBody()));
                        },
                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              Defaults.drawerItemText[0].tr(),
                              style: TextStyle(
                                  fontFamily: "Cairo",
                                  color: indexClicked == 0
                                      ? Defaults.drawerItemSelectColor
                                      : Theme.of(context)
                                          .toggleableActiveColor),
                            ),
                            Icon(
                              Icons.home_rounded,
                              color: indexClicked == 0
                                  ? Defaults.drawerItemSelectColor
                                  : Theme.of(context).toggleableActiveColor,
                            )
                          ],
                        ),
                      ),
                      Divider(
                        color: Theme.of(context).canvasColor,
                        height: 10,
                        thickness: 0.5,
                        indent: 3,
                      ),
                      ListTile(
                        onTap: () {
                          indexClicked = 1;
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const About()));
                        },
                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "About".tr(),
                              style: TextStyle(
                                fontFamily: "Cairo",
                                color: indexClicked == 1
                                    ? Defaults.drawerItemSelectColor
                                    : Theme.of(context).toggleableActiveColor,
                              ),
                            ),
                            Container(
                                height: 25,
                                width: 25,
                                child: Image.asset(
                                  "assets/icons/id-card.png",
                                  color: indexClicked == 1
                                      ? Defaults.drawerItemSelectColor
                                      : Theme.of(context).toggleableActiveColor,
                                ))
                          ],
                        ),
                      ),
                      Divider(
                        color: Theme.of(context).canvasColor,
                        height: 10,
                        thickness: 0.5,
                        indent: 3,
                      ),
                      ExpansionTile(
                        iconColor: indexClicked == 2
                            ? Defaults.drawerItemSelectColor
                            : Theme.of(context).toggleableActiveColor,
                        initiallyExpanded: false,
                        title: Row(
                          children: [
                            Text(
                              "Services".tr(),
                              style: TextStyle(
                                  color: indexClicked == 2
                                      ? Defaults.drawerItemSelectColor
                                      : Theme.of(context).toggleableActiveColor,
                                  fontFamily: "Cairo"),
                            ),
                            const SizedBox(width: 150),
                            Image.asset(
                              "assets/icons/software-application.png",
                              height: 22,
                              width: 22,
                              color: indexClicked == 2
                                  ? Defaults.drawerItemSelectColor
                                  : Theme.of(context).toggleableActiveColor,
                            ),
                          ],
                        ),
                        children: [
                          ListView.builder(
                              shrinkWrap: true,
                              physics: const BouncingScrollPhysics(),
                              itemCount: listResponse.length,
                              itemBuilder: (context, index) {
                                return Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    ListTile(
                                        leading: TextButton(
                                            onPressed: () {
                                              indexClicked = 3;
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        WebsiteDesignScreen(
                                                          name: listResponse[
                                                                  index][translator
                                                                          .currentLanguage ==
                                                                      'en'
                                                                  ? 'name_en'
                                                                  : 'name_ar']
                                                              .toString(),
                                                          url: listResponse[
                                                              index]["url"],
                                                        )),
                                              );
                                            },
                                            child: Text(
                                              listResponse[index][translator
                                                              .currentLanguage ==
                                                          'en'
                                                      ? 'name_en'
                                                      : 'name_ar']
                                                  .toString(),
                                              overflow: TextOverflow.clip,
                                              style: TextStyle(
                                                color: indexClicked == 3
                                                    ? Defaults
                                                        .drawerItemSelectColor
                                                    : Theme.of(context)
                                                        .toggleableActiveColor,
                                                fontFamily: "Cairo",
                                                fontWeight: FontWeight.w600,
                                                fontSize: 12.5,
                                              ),
                                            ))),
                                    const SizedBox(
                                      height: 0,
                                    ),
                                    Divider(
                                      color: Theme.of(context).canvasColor,
                                      height: 0,
                                      thickness: 0.25,
                                      indent: 10,
                                      endIndent: 10,
                                    ),
                                  ],
                                );
                              }),
                        ],
                        onExpansionChanged: (bool expanded) {},
                        controlAffinity: ListTileControlAffinity.platform,
                      ),
                      const Divider(
                        color: Colors.grey,
                        height: 10,
                        thickness: 0.5,
                        indent: 5,
                      ),
                      ListTile(
                        selected: selected1 == 10,
                        onTap: () {
                          indexClicked = 10;
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const CustomerReviews()));
                        },
                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "customer reviews".tr(),
                              style: TextStyle(
                                fontFamily: "Cairo",
                                color: indexClicked == 10
                                    ? Defaults.drawerItemSelectColor
                                    : Theme.of(context).toggleableActiveColor,
                              ),
                            ),
                            Icon(
                              Icons.people_outline,
                              color: indexClicked == 10
                                  ? Defaults.drawerItemSelectColor
                                  : Theme.of(context).toggleableActiveColor,
                            )
                          ],
                        ),
                      ),
                      const Divider(
                        color: Colors.grey,
                        height: 10,
                        thickness: 0.5,
                        indent: 5,
                      ),
                      ListTile(
                        selected: selected1 == 11,
                        onTap: () {
                          indexClicked = 11;
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Blog()));
                        },
                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "blog".tr(),
                              style: TextStyle(
                                fontFamily: "Cairo",
                                color: indexClicked == 11
                                    ? Defaults.drawerItemSelectColor
                                    : Theme.of(context).toggleableActiveColor,
                              ),
                            ),
                            Icon(
                              Icons.comment_bank_outlined,
                              color: indexClicked == 11
                                  ? Defaults.drawerItemSelectColor
                                  : Theme.of(context).toggleableActiveColor,
                            )
                          ],
                        ),
                      ),
                      const Divider(
                        color: Colors.grey,
                        height: 10,
                        thickness: 0.5,
                        indent: 5,
                      ),
                      ListTile(
                        selected: selected1 == 12,
                        onTap: () {
                          indexClicked = 12;
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const ContactUs()));
                        },
                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "contact us".tr(),
                              style: TextStyle(
                                fontFamily: "Cairo",
                                color: indexClicked == 12
                                    ? Defaults.drawerItemSelectColor
                                    : Theme.of(context).toggleableActiveColor,
                              ),
                            ),
                            Icon(
                              Icons.email_outlined,
                              color: indexClicked == 12
                                  ? Defaults.drawerItemSelectColor
                                  : Theme.of(context).toggleableActiveColor,
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Theme.of(context).errorColor,
                        ),
                        child: TextButton(
                          style: ElevatedButton.styleFrom(
                            shadowColor: Colors.black,
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const LogIn()));
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Icon(
                                Icons.lock,
                                color: Theme.of(context).secondaryHeaderColor,
                              ),
                              const SizedBox(width: 5.0),
                              Text(
                                'login'.tr(),
                                style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: "Cairo",
                                  fontWeight: FontWeight.w600,
                                  color: Theme.of(context).secondaryHeaderColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Theme.of(context).errorColor,
                        ),
                        child: TextButton(
                          style: ElevatedButton.styleFrom(
                            shadowColor: Colors.black,
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Register()));
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                  width: 20,
                                  height: 20,
                                  child: Image.asset(
                                    "assets/icons/user-male.png",
                                    color:
                                        Theme.of(context).secondaryHeaderColor,
                                  )),
                              const SizedBox(width: 8.0),
                              Text(
                                'register'.tr(),
                                style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: "Cairo",
                                  fontWeight: FontWeight.w600,
                                  color: Theme.of(context).secondaryHeaderColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Theme.of(context).errorColor,
                        ),
                        child: TextButton(
                          style: ElevatedButton.styleFrom(
                            shadowColor: Colors.black,
                          ),
                          onPressed: () {
                            //   Navigator.push(
                            // context,
                            // MaterialPageRoute(
                            // builder: (context) => const MyMobileBody()));
                            translator.setNewLanguage(
                              context,
                              newLanguage: translator.currentLanguage == 'en'
                                  ? 'ar'
                                  : 'en',
                              remember: true,
                              //restart: true,
                            );
                            setState(() {
                              _bool = !_bool;
                            });
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              const SizedBox(width: 5.0),
                              Text(
                                'buttonTitle'.tr(),
                                style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: "Cairo",
                                  fontWeight: FontWeight.w600,
                                  color: Theme.of(context).secondaryHeaderColor,
                                ),
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              AnimatedCrossFade(
                                  firstChild: Container(
                                      height: 20,
                                      width: 20,
                                      child: Image.asset(
                                          "assets/icons/saudi-arabia.png")),
                                  secondChild: Container(
                                      height: 20,
                                      width: 20,
                                      child: Image.asset(
                                          "assets/icons/united-states.png")),
                                  crossFadeState: _bool
                                      ? CrossFadeState.showFirst
                                      : CrossFadeState.showSecond,
                                  duration: const Duration(milliseconds: 1))
                            ],
                          ),
                        ),
                      ),
                      const Divider(
                        color: Colors.grey,
                        height: 10,
                        thickness: 3,
                        indent: 40,
                        endIndent: 40,
                      ),
                    ],
                  ),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        ThemeService().changeTheme();
                        click = !click;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Stack(
                          children: [
                            Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    gradient: LinearGradient(
                                        begin: Alignment.topRight,
                                        colors: click
                                            ? [
                                                const Color(0xFF30218f),
                                                const Color.fromARGB(
                                                    255, 122, 109, 204),
                                              ]
                                            : [
                                                const Color(0xffffcc81),
                                                const Color(0xffff6e30),
                                              ]))),
                            AnimatedPositioned(
                              duration: const Duration(milliseconds: 100),
                              top: PositionShadow,
                              right: PositionShadow,
                              child: Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Theme.of(context).dividerColor,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        Text(
                          click ? "good night".tr() : "Good morning".tr(),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: "Cairo",
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).canvasColor,
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                ],
              );
            }),
      ),
    );
  }
}