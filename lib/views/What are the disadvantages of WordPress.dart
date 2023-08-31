// ignore_for_file: non_constant_identifier_names

import 'package:arabic_english_app/views/mobile_body.dart';
import 'package:arabic_english_app/views/website%20_design%20_and_hosting.dart';
import 'package:arabic_english_app/widget/foter_bar.dart';
import 'package:arabic_english_app/widget/my_heardre_drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

String stringResponse = "";
Map<String, dynamic> mapResponse = {};
Map<String, dynamic> dataResponse = {};
List listResponse = [];

String UrlImage = "https://backend.fingerprintm.com/images";
bool _isLoading = true;

class WhitAreTheDisadvantages extends StatefulWidget {
  final String slug;
  final String name;
  const WhitAreTheDisadvantages(
      {super.key, Key, required this.slug, required this.name});

  @override
  State<WhitAreTheDisadvantages> createState() =>
      _WhitAreTheDisadvantagesState();
}

class _WhitAreTheDisadvantagesState extends State<WhitAreTheDisadvantages> {
  Future postData(String slug) async {
    try {
      http.Response response;
      response = await http
          .post(Uri.parse("https://backend.fingerprintm.com/api/post/$slug"));
      //response = await http.get(Uri.parse(grtPostes));
      if (response.statusCode == 200) {
        setState(() {
          //stringResponse =  response.body;
          mapResponse = json.decode(response.body);
          // dataResponse = mapResponse["data"];
          dataResponse = mapResponse['data'];

          print(dataResponse["section"]);
        });
      }
    } catch (e) {
      print(mapResponse["data"]["description_ar"]);
      setState(() {
        _isLoading = false;
        listResponse = [];
        showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                backgroundColor: Theme.of(context).dividerColor,
                elevation: 0,
                contentTextStyle: TextStyle(
                  color: Theme.of(context).canvasColor,
                ),
                iconColor: Colors.black,
                shadowColor: Colors.transparent,
                title: Text("Contact_the_internet".tr()),
                content: Container(
                  height: 100,
                  width: MediaQuery.of(context).size.width * 0.95,
                  child: Column(
                    children: [
                      Container(
                        width: 40,
                        height: 40,
                        child: Image.asset(
                          "assets/icons/wifi (2).png",
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Theme.of(context).dividerColor),
                        child: Text(
                          "There_is_no_internet_connection".tr(),
                          style: TextStyle(
                              color: Theme.of(context).canvasColor,
                              fontSize: 25),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            });
      });
    }
  }

  @override
  void initState() {
    postData(widget.slug);
    //servicestrack("${widget.name}");
    super.initState();
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
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
                Container(
                  color: Colors.black,
                  width: double.infinity,
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
                  child: Column(
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
                            size: 30,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              ">>".tr(),
                              style: TextStyle(
                                  fontFamily: "Cairo",
                                  fontSize: width * 0.070,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600),
                            ),
                            const SizedBox(width: 10),
                            Text(
                              "blog".tr(),
                              style: TextStyle(
                                  fontFamily: "Cairo",
                                  fontSize: width * 0.070,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              ">>".tr(),
                              style: TextStyle(
                                  fontFamily: "Cairo",
                                  fontSize: width * 0.065,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600),
                            ),
                            const SizedBox(width: 10),
                            Container(
                              width: width * 0.90,
                              child: Text(
                                widget.name,
                                style: TextStyle(
                                    fontFamily: "Cairo",
                                    fontSize: width * 0.045,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600),
                                overflow: TextOverflow.clip,
                              ),
                            ),
                          ],
                        ),
                      ]),
                ),
              ],
            ),
            ListView.builder(
              itemCount: 1,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: 1,
                      itemBuilder: (context, index) {
                        return Column(children: [
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
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
                                    dataResponse["updated_at"],
                                    style: const TextStyle(
                                      fontSize: 21,
                                      fontFamily: "Cairo",
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            width: width * 0.95,
                            child: Image(
                              image: NetworkImage(
                                  "$UrlImage/${dataResponse["photo"]}"),
                            ),
                          ),
                          const SizedBox(height: 25),
                          Row(
                            children: [
                              SizedBox(width: width / 90),
                              CircleAvatar(
                                backgroundImage: NetworkImage(
                                    "$UrlImage/${dataResponse["user"]['photo']}"),
                                backgroundColor: Colors.white,
                                radius: 17,
                              ),
                              Text(
                                dataResponse["user"]["name"],
                                style: TextStyle(
                                    fontSize: width * 0.040,
                                    // ignore: deprecated_member_use
                                    color:
                                        Theme.of(context).toggleableActiveColor,
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
                                child: Image.asset("assets/icons/comment.png",
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
                          const SizedBox(
                            height: 60,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const SizedBox(width: 10),
                              Container(
                                width: width * 0.95,
                                child: Text(
                                  dataResponse[
                                          translator.currentLanguage == 'en'
                                              ? 'name_en'
                                              : 'name_ar']
                                      .toString(),
                                  style: TextStyle(
                                      fontSize: width * 0.055,
                                      fontFamily: "Cairo",
                                      fontWeight: FontWeight.w800,
                                      color: Colors.amber),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 60),
                          Container(
                            width: width * 0.92,
                            child: HtmlWidget(
                              dataResponse[translator.currentLanguage == 'en'
                                      ? 'body_en'
                                      : 'body_ar']
                                  .toString(),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(height: 20),
                                const SizedBox(height: 60),
                                TextButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  WebsiteDesignScreen(
                                                    name: dataResponse[
                                                            "section"][translator
                                                                    .currentLanguage ==
                                                                'en'
                                                            ? 'name_en'
                                                            : 'name_ar']
                                                        .toString(),
                                                    url: dataResponse["section"]
                                                        ["url"],
                                                  )));
                                    },
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          "section:".tr(),
                                          style: TextStyle(
                                              color: Theme.of(context)
                                                  .toggleableActiveColor,
                                              fontSize: width * 0.055,
                                              fontFamily: "Cairo",
                                              fontWeight: FontWeight.w800),
                                        ),
                                        const SizedBox(width: 5),
                                        Container(
                                          width: width * 0.70,
                                          child: Text(
                                            dataResponse["section"][
                                                translator.currentLanguage ==
                                                        'en'
                                                    ? 'name_en'
                                                    : 'name_ar'],
                                            style: TextStyle(
                                                color: Colors.amber,
                                                fontSize: width * 0.045,
                                                fontFamily: "Cairo",
                                                fontWeight: FontWeight.w600),
                                          ),
                                        )
                                      ],
                                    )),
                                Container(
                                  width: width * 0.95,
                                  height: 0.5,
                                  color:
                                      Theme.of(context).toggleableActiveColor,
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
                                            color: Theme.of(context)
                                                .toggleableActiveColor,
                                            fontSize: width * 0.070,
                                            fontFamily: "Cairo",
                                            fontWeight: FontWeight.w600),
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
                                        style: TextStyle(
                                            color: Colors.amber,
                                            fontSize: width * 0.070,
                                            fontFamily: "Cairo",
                                            fontWeight: FontWeight.w600),
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
                                        "When the admin approves your comment, it will appear"
                                            .tr(),
                                        style: TextStyle(
                                            color: Theme.of(context)
                                                .toggleableActiveColor,
                                            fontSize: 12,
                                            fontFamily: "Cairo",
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 30),
                                Container(
                                  width: width * 0.95,
                                  padding:
                                      const EdgeInsets.only(right: 8, left: 8),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Theme.of(context).colorScheme.background,
                                  ),
                                  child: TextFormField(
                                    minLines: 7,
                                    maxLines: 8,
                                    keyboardType: TextInputType.multiline,
                                    decoration: InputDecoration(
                                      hintText:
                                          "Write your review here...".tr(),
                                      hintStyle: const TextStyle(
                                          fontSize: 13,
                                          color: Colors.grey,
                                          fontFamily: "Cairo",
                                          fontWeight: FontWeight.w600),
                                      border: const OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10))),
                                      enabledBorder: InputBorder.none,
                                      focusedBorder: InputBorder.none,
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 30),
                                Container(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                              shadowColor: Colors.white,
                                              elevation: 5,
                                              backgroundColor:
                                                  const Color.fromARGB(
                                                      255, 255, 202, 58),
                                            ),
                                            onPressed: () {},
                                            child: Text(
                                              "Add a comment".tr(),
                                              style: const TextStyle(
                                                fontSize: 22,
                                                fontFamily: "Cairo",
                                                fontWeight: FontWeight.w600,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 60,
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                const SizedBox(height: 70),
                              ],
                            ),
                          ),
                        ]);
                      },
                    ),
                    // if (_isLoading)
                    //   const Center(
                    //     child: Column(
                    //       children: [
                    //         CircularProgressIndicator(),
                    //         SizedBox(
                    //           height: 100,
                    //         ),
                    //       ],
                    //     ),
                    //   ),
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
          ],
        ),
      ),
    );
  }
}
