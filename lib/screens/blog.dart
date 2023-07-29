// ignore_for_file: non_constant_identifier_names

import 'package:arabic_english_app/constants.dart';
import 'package:arabic_english_app/screens/Advantages%20of%20creating%20a%20special%20programming%20website.dart';
import 'package:arabic_english_app/screens/What%20are%20the%20disadvantages%20of%20WordPress.dart';
import 'package:arabic_english_app/screens/mobile_body.dart';
import 'package:arabic_english_app/widget/foter_bar.dart';
import 'package:arabic_english_app/widget/my_heardre_drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:url_launcher/url_launcher.dart';

String UrlImage = "https://backend.fingerprintm.com/images";

String stringResponse = "";
Map<String, dynamic> mapResponse = {};
Map<String, dynamic> dataResponse = {};
List<dynamic> listResponse = [];
List<dynamic> userRespons = [];
List<dynamic> pageRespons = [];
bool _isLoading = true;

class Blog extends StatefulWidget {
  const Blog({super.key});

  @override
  State<Blog> createState() => _BlogState();
}

class _BlogState extends State<Blog> {
  Future apicall() async {
    try {
      http.Response response;
      response = await http.get(Uri.parse(
          "https://backend.fingerprintm.com/api/filterPosts?sections_id=[]"));
      //response = await http.get(Uri.parse(grtPostes));
      if (response.statusCode == 200) {
        setState(() {
          //stringResponse =  response.body;
          mapResponse = json.decode(response.body);
          // dataResponse = mapResponse["data"];
          listResponse = mapResponse['data']["data"];
          userRespons = mapResponse["data"]["data"];

          print(listResponse);
        });
      }
    } catch (e) {
      setState(() {
        _isLoading = false;
        listResponse = [];
        showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: const Text("Error "),
                content: Text("An error occurred:$e"),
              );
            });
      });
    }
  }

  @override
  void initState() {
    apicall();

    super.initState();
  }

  List<String> itemsList = [
    "Section",
    "Website design and hosting",
    "content writing",
    "Design and devielpment",
    "Social Media designs",
    "Advertising photography",
    "advertisements",
    "Motion Graphic",
  ];
  bool Section = false;
  bool Website = false;
  bool content = false;
  bool Design = false;
  bool Social = false;
  bool Advertising = false;
  bool advertisements = false;
  bool Motion = false;

// ignore: unused_element
  Future<void> _handleRefresh() async {
    return await Future.delayed(const Duration(seconds: 1));
  }

  @override
  Widget build(BuildContext context) {
    // bool _obscureTex  = true;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      drawerScrimColor: Theme.of(context).selectedRowColor,
      backgroundColor: Theme.of(context).dividerColor,
      drawer: const MyHeadreDrawer(),
      appBar: AppBar(
        centerTitle: true,
        excludeHeaderSemantics: true,
        automaticallyImplyLeading: false,
        elevation: 8,
        backgroundColor: Theme.of(context).primaryColor,
        title: const Text(
          "ttt",
        ),
        actions: [
          Builder(
            builder: (context) {
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
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const MyMobileBody()));
                            },
                            child: const Image(
                              image: AssetImage(
                                  "assets/images/logo-transparent.png"),
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Container(
                          width: 50,
                          height: 50,
                          child: IconButton(
                            onPressed: () {
                              Scaffold.of(context).openDrawer();
                            },
                            icon: SvgPicture.asset(
                              "assets/icons/menu.svg",
                              color: Colors.white,
                            ),
                          ),
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
            child: SingleChildScrollView(
              child: ListView.builder(
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                itemCount: 1,
                itemBuilder: (context, index) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Stack(
                        children: [
                          Container(
                            color: Colors.black,
                            width: double.infinity,
                            height: 400,
                            child: Image.asset(
                              "assets/images/breadcrumb.cad63821.jpeg",
                              fit: BoxFit.cover,
                            ),
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
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const MyMobileBody()));
                                    },
                                    child: const Icon(
                                      Icons.home_outlined,
                                      color: Colors.white,
                                      size: 60,
                                    ),
                                  ),
                                  const Text(
                                    ">>",
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                        fontSize: 40,
                                        fontFamily: "Cairo",
                                        color: Colors.white),
                                  ),
                                  const SizedBox(width: 5),
                                  Text(
                                    "blog".tr(),
                                    style: const TextStyle(
                                        fontFamily: "Cairo",
                                        fontSize: 50,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ]),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 60,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        width: width * 0.90,
                        padding: const EdgeInsets.only(
                          left: 10,
                          right: 10,
                        ),
                        decoration: BoxDecoration(
                            color: Theme.of(context).backgroundColor,
                            borderRadius: BorderRadius.circular(10)),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "search".tr(),
                            hintStyle: TextStyle(
                                fontSize: 15,
                                fontFamily: "Cairo",
                                color: Theme.of(context).toggleableActiveColor),
                            suffixIcon: Icon(Icons.search_sharp,
                                color: Theme.of(context).toggleableActiveColor),
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                          ),
                        ),
                      ),
                      const SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const SizedBox(width: 20),
                          Text(
                            "section".tr(),
                            style: const TextStyle(
                                fontSize: 30,
                                fontFamily: "Cairo",
                                fontWeight: FontWeight.w800,
                                color: Colors.amber),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          children: [
                            Container(
                              width: width * 0.50,
                              decoration:
                                  const BoxDecoration(color: Colors.amber),
                              height: 8,
                            ),
                            Container(
                              width: width * 0.42,
                              decoration: BoxDecoration(
                                  color:
                                      Theme.of(context).toggleableActiveColor),
                              height: 0.6,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 10),
                      Container(
                        width: double.infinity,
                        child: Column(
                          children: [
                            CheckboxListTile(
                              selected: itemsList == 0,
                              value: Section,
                              onChanged: (newValue) {
                                setState(() {
                                  Section = newValue!;
                                });
                              },
                              checkColor: Colors.white,
                              activeColor: Colors.blue,
                              // ignore: deprecated_member_use
                              selectedTileColor:
                                  Theme.of(context).toggleableActiveColor,
                              title: Text(
                                itemsList[0].tr(),
                                style: TextStyle(
                                    // ignore: deprecated_member_use
                                    color:
                                        Theme.of(context).toggleableActiveColor,
                                    fontFamily: "Cairo",
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                            CheckboxListTile(
                              selected: itemsList == 1,
                              value: Website,
                              onChanged: (newValue) {
                                setState(() {
                                  Website = newValue!;
                                });
                              },
                              checkColor: Colors.white,
                              activeColor: Colors.blue,
                              // ignore: deprecated_member_use
                              selectedTileColor:
                                  Theme.of(context).toggleableActiveColor,
                              title: Text(
                                itemsList[1].tr(),
                                style: TextStyle(
                                    // ignore: deprecated_member_use
                                    color:
                                        Theme.of(context).toggleableActiveColor,
                                    fontFamily: "Cairo",
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                            CheckboxListTile(
                              selected: itemsList == 2,
                              value: content,
                              onChanged: (newValue) {
                                setState(() {
                                  content = newValue!;
                                });
                              },
                              checkColor: Colors.white,
                              activeColor: Colors.blue,
                              // ignore: deprecated_member_use
                              selectedTileColor:
                                  Theme.of(context).toggleableActiveColor,
                              title: Text(
                                itemsList[2].tr(),
                                style: TextStyle(
                                    // ignore: deprecated_member_use
                                    color:
                                        Theme.of(context).toggleableActiveColor,
                                    fontFamily: "Cairo",
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                            CheckboxListTile(
                              selected: itemsList == 3,
                              value: Design,
                              onChanged: (newValue) {
                                setState(() {
                                  Design = newValue!;
                                });
                              },
                              checkColor: Colors.white,
                              activeColor: Colors.blue,
                              // ignore: deprecated_member_use
                              selectedTileColor:
                                  Theme.of(context).toggleableActiveColor,
                              title: Text(
                                itemsList[3].tr(),
                                style: TextStyle(
                                    // ignore: deprecated_member_use
                                    color:
                                        Theme.of(context).toggleableActiveColor,
                                    fontFamily: "Cairo",
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                            CheckboxListTile(
                              selected: itemsList == 4,
                              value: Social,
                              onChanged: (newValue) {
                                setState(() {
                                  Social = newValue!;
                                });
                              },
                              checkColor: Colors.white,
                              activeColor: Colors.blue,
                              // ignore: deprecated_member_use
                              selectedTileColor:
                                  Theme.of(context).toggleableActiveColor,
                              title: Text(
                                itemsList[4].tr(),
                                style: TextStyle(
                                    // ignore: deprecated_member_use
                                    color:
                                        Theme.of(context).toggleableActiveColor,
                                    fontFamily: "Cairo",
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                            CheckboxListTile(
                              selected: itemsList == 5,
                              value: Advertising,
                              onChanged: (newValue) {
                                setState(() {
                                  Advertising = newValue!;
                                });
                              },
                              checkColor: Colors.white,
                              activeColor: Colors.blue,
                              // ignore: deprecated_member_use
                              selectedTileColor:
                                  Theme.of(context).toggleableActiveColor,
                              title: Text(
                                itemsList[5].tr(),
                                style: TextStyle(
                                    // ignore: deprecated_member_use
                                    color:
                                        Theme.of(context).toggleableActiveColor,
                                    fontFamily: "Cairo",
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                            CheckboxListTile(
                              selected: itemsList == 6,
                              value: advertisements,
                              onChanged: (newValue) {
                                setState(() {
                                  advertisements = newValue!;
                                });
                              },
                              checkColor: Colors.white,
                              activeColor: Colors.blue,
                              // ignore: deprecated_member_use
                              selectedTileColor:
                                  Theme.of(context).toggleableActiveColor,
                              title: Text(
                                itemsList[6].tr(),
                                style: TextStyle(
                                    // ignore: deprecated_member_use
                                    color:
                                        Theme.of(context).toggleableActiveColor,
                                    fontFamily: "Cairo",
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                            CheckboxListTile(
                              selected: itemsList == 7,
                              value: Motion,
                              onChanged: (newValue) {
                                setState(() {
                                  Motion = newValue!;
                                });
                              },
                              checkColor: Colors.white,
                              activeColor: Colors.blue,
                              // ignore: deprecated_member_use
                              selectedTileColor:
                                  Theme.of(context).toggleableActiveColor,
                              title: Text(
                                itemsList[7].tr(),
                                style: TextStyle(
                                    // ignore: deprecated_member_use
                                    color:
                                        Theme.of(context).toggleableActiveColor,
                                    fontFamily: "Cairo",
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 30),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const SizedBox(width: 20),
                          Text(
                            "most viewed".tr(),
                            style: const TextStyle(
                              fontSize: 30,
                              fontFamily: "Cairo",
                              fontWeight: FontWeight.w800,
                              color: Colors.amber,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        padding: const EdgeInsets.all(15),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  decoration:
                                      const BoxDecoration(color: Colors.amber),
                                  width: width * 0.70,
                                  height: 8,
                                ),
                              ],
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color:
                                      Theme.of(context).scaffoldBackgroundColor,
                                  boxShadow: const [
                                    BoxShadow(
                                        offset: Offset(-0, 0),
                                        blurStyle: BlurStyle.outer,
                                        blurRadius: 2,
                                        color: Colors.grey,
                                        spreadRadius: 0)
                                  ]),
                              width: double.infinity,
                              child: ListView.builder(
                                itemCount: listResponse == null
                                    ? 0
                                    : listResponse.length,
                                shrinkWrap: true,
                                physics: const NeverScrollableScrollPhysics(),
                                itemBuilder: (context, index) {
                                  return Column(
                                    children: [
                                      InkWell(
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      WhitAreTheDisadvantages(
                                                          slug: listResponse[
                                                              index]["slug"])));
                                        },
                                        child: Container(
                                          padding: const EdgeInsets.all(1),
                                          width: double.infinity,
                                          child: Row(
                                            children: [
                                              Container(
                                                width: width * 0.33,
                                                child: Image(
                                                  image: NetworkImage(
                                                    "$UrlImage/${listResponse[index]['photo']}"
                                                        .toString(),
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(width: 10),
                                              Container(
                                                width: width * 0.55,
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Text(
                                                      // "aofepitgjepitgjwrepishgkfxgsrljgpirjgprkgjpo",
                                                      listResponse[
                                                              index][translator
                                                                      .currentLanguage ==
                                                                  'en'
                                                              ? 'name_en'
                                                              : 'name_ar']
                                                          .toString(),
                                                      style: TextStyle(
                                                        fontSize: width * 0.040,
                                                        fontFamily: "Cairo",
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        color: Colors.amber,
                                                      ),
                                                      overflow:
                                                          TextOverflow.clip,
                                                    ),
                                                    Row(
                                                      children: [
                                                        Container(
                                                          width: 15,
                                                          height: 15,
                                                          child: Image.asset(
                                                            "assets/icons/611.png",
                                                            fit: BoxFit.cover,
                                                            color: Colors.grey,
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          width: width * 0.015,
                                                        ),
                                                        Text(
                                                          listResponse[index]
                                                              ["updated_at"],
                                                          style: TextStyle(
                                                              fontSize:
                                                                  width * 0.020,
                                                              color:
                                                                  Colors.amber),
                                                        ),
                                                      ],
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      const Divider(
                                        color: Colors.grey,
                                        height: 10,
                                        thickness: 0.5,
                                        indent: 5,
                                      ),
                                    ],
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 40),
                      ListView.builder(
                        itemCount:
                            listResponse == null ? 0 : listResponse.length,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(10),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        const SizedBox(width: 10),
                                        Container(
                                          decoration: const BoxDecoration(
                                            color: Colors.amber,
                                          ),
                                          width: 120,
                                          height: 50,
                                          child: Center(
                                            child: Text(
                                              listResponse[index]["updated_at"]
                                                  .toString(),
                                              style: TextStyle(
                                                  fontSize: width * 0.040,
                                                  fontFamily: "Cairo",
                                                  fontWeight: FontWeight.w600,
                                                  color: Colors.white),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    InkWell(
                                      onTap: () {
                                        // Navigator.push(
                                        // context,
                                        // MaterialPageRoute(
                                        // builder: (context) => const WhitAreTheDisadvantages()));
                                      },
                                      child: Image(
                                        image: NetworkImage(
                                            "$UrlImage/${listResponse[index]['photo']}"),
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    //السم الصاحب المدونه وصورته وزر التعلقات
                                    Row(
                                      children: [
                                        SizedBox(width: width / 90),
                                        CircleAvatar(
                                          backgroundImage: NetworkImage(
                                              "$UrlImage/${listResponse[index]["user"]['photo']}"),
                                          backgroundColor: Colors.white,
                                          radius: 17,
                                        ),
                                        Text(
                                          listResponse[index]["user"]["name"],
                                          style: TextStyle(
                                              fontSize: width * 0.040,
                                              // ignore: deprecated_member_use
                                              color: Theme.of(context)
                                                  .toggleableActiveColor,
                                              fontFamily: "Cairo",
                                              fontWeight: FontWeight.w500),
                                        ),
                                        SizedBox(
                                          width: width / 90,
                                        ),
                                        Text(
                                          "|",
                                          style: TextStyle(
                                              fontSize: 25,
                                              // ignore: deprecated_member_use
                                              color: Theme.of(context)
                                                  .toggleableActiveColor),
                                        ),
                                        SizedBox(width: width / 90),
                                        Container(
                                          width: 25,
                                          height: 25,
                                          child: Image.asset(
                                              "assets/icons/comment.png",
                                              fit: BoxFit.cover,
                                              // ignore: deprecated_member_use
                                              color: Theme.of(context)
                                                  .toggleableActiveColor),
                                        ),
                                        Text(
                                          "comments".tr(),
                                        ),
                                      ],
                                    ),

                                    Container(
                                      width: double.infinity,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          TextButton(
                                            onPressed: () {
                                              // Navigator.push(
                                              // context,
                                              // MaterialPageRoute(
                                              // builder: (context) => const WhitAreTheDisadvantages()));
                                            },
                                            child: Text(
                                              listResponse[index][translator
                                                              .currentLanguage ==
                                                          'en'
                                                      ? 'name_en'
                                                      : 'name_ar']
                                                  .toString(),
                                              style: TextStyle(
                                                  fontSize: width * 0.050,
                                                  fontFamily: "Cairo",
                                                  fontWeight: FontWeight.w800,
                                                  color: Colors.amber),
                                            ),
                                          ),
                                          Row(
                                            children: [
                                              const SizedBox(width: 7),
                                              Container(
                                                // padding: const EdgeInsets.all(5),
                                                width: width * 0.90,
                                                child: Text(
                                                  listResponse[index][translator
                                                                  .currentLanguage ==
                                                              'en'
                                                          ? 'description_en'
                                                          : 'description_ar']
                                                      .toString(),
                                                  style: TextStyle(
                                                    fontSize: width * 0.037,
                                                    fontFamily: "Cairo",
                                                    fontWeight: FontWeight.w600,
                                                    // ignore: deprecated_member_use
                                                    color: Theme.of(context)
                                                        .toggleableActiveColor,
                                                  ),
                                                  overflow: TextOverflow.clip,
                                                ),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                    const SizedBox(height: 40),
                                    Row(
                                      children: [
                                        ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                                backgroundColor: Colors.amber),
                                            onPressed: () {
                                              // Navigator.push(
                                              //     context,
                                              //     MaterialPageRoute(
                                              //         builder: (context) =>
                                              //             WhitAreTheDisadvantages(
                                              //                 url:
                                              //                     "filterPosts")));
                                            },
                                            child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                const Icon(
                                                  Icons.arrow_back,
                                                  color: Colors.white,
                                                  size: 18,
                                                ),
                                                const SizedBox(width: 5),
                                                Text(
                                                  "read more".tr(),
                                                  style: TextStyle(
                                                      fontSize: width / 17,
                                                      fontFamily: "Cairo",
                                                      fontWeight:
                                                          FontWeight.w600),
                                                ),
                                              ],
                                            )),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                      if (_isLoading)
                        const Center(
                          child: Column(
                            children: [
                              CircularProgressIndicator(),
                              SizedBox(
                                height: 100,
                              ),
                            ],
                          ),
                        ),
                      const SizedBox(height: 90),
                      const SizedBox(height: 0),
                      Container(
                        width: double.infinity,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Container(
                                      width: width / 4,
                                      height: 60,
                                      decoration: BoxDecoration(
                                          color: Colors.grey,
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Center(
                                          child: Container(
                                        width: 40,
                                        height: 40,
                                        child: Image.asset(
                                          "assets/icons/right-arrow (1).png",
                                          fit: BoxFit.cover,
                                          color: const Color.fromARGB(
                                              255, 70, 79, 97),
                                        ),
                                      )),
                                    ),
                                    const SizedBox(width: 15),
                                    InkWell(
                                      onTap: () {},
                                      child: Container(
                                        width: width * 0.140,
                                        height: 60,
                                        decoration: BoxDecoration(
                                          color: Colors.amber,
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        child: Center(
                                          child: Text(
                                            "1",
                                            style: TextStyle(
                                                fontSize: width * 0.085,
                                                fontFamily: "Cairo",
                                                fontWeight: FontWeight.w600,
                                                color: Colors.white),
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 15),
                                    Container(
                                      width: width / 4,
                                      height: 60,
                                      decoration: BoxDecoration(
                                          color: Colors.grey,
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Center(
                                          child: Container(
                                        width: 40,
                                        height: 40,
                                        child: Image.asset(
                                          "assets/icons/right-arrow.png",
                                          fit: BoxFit.cover,
                                          color: const Color.fromARGB(
                                              255, 70, 79, 97),
                                        ),
                                      )),
                                    ),
                                    SizedBox(width: width / 25),
                                  ],
                                ),
                                const SizedBox(height: 20),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Container(
                                      width: width / 2.5,
                                      height: 60,
                                      decoration: BoxDecoration(
                                          color: Colors.grey,
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Center(
                                          child: Text(
                                        "1/1",
                                        style: TextStyle(
                                          fontSize: width * 0.100,
                                          fontFamily: "Cairo",
                                          color: const Color.fromARGB(
                                              255, 87, 94, 109),
                                        ),
                                      )),
                                    ),
                                    SizedBox(width: width / 15),
                                    Container(
                                      width: 70,
                                      height: 55,
                                      decoration: BoxDecoration(
                                          color: Colors.grey,
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Center(
                                          child: Text(
                                        "2",
                                        style: TextStyle(
                                          fontSize: width * 0.085,
                                          fontFamily: "Cairo",
                                          fontWeight: FontWeight.w700,
                                          color: Color.fromARGB(
                                              255, 112, 121, 141),
                                        ),
                                      )),
                                    ),
                                    const SizedBox(width: 15),
                                  ],
                                )
                              ],
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
                                  color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
