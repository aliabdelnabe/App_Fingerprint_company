import 'package:arabic_english_app/screens/mobile_body.dart';
import 'package:arabic_english_app/widget/foter_bar.dart';
import 'package:arabic_english_app/widget/my_heardre_drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:url_launcher/url_launcher.dart';

import '../widget/services_track.dart';

String stringResponse = "";
Map<String, dynamic> mapResponse = {};
Map<String, dynamic> dataResponse = {};
List listResponse = [];

List responseList = [];
Map<String, dynamic> rresponseMap = {};
Map<String, dynamic> responseData = {};

class CardItem {
  final String urlImage;
  final String title;
  final String titleData;

  const CardItem(
      {required this.urlImage, required this.title, required this.titleData});
}

class WebsiteDesignScreen extends StatefulWidget {
  final String url;
  final String name;

  const WebsiteDesignScreen({
    super.key,
    required this.url,
    required this.name,
  });

  @override
  State<WebsiteDesignScreen> createState() => _WebsiteDesignScreenState();
}

class _WebsiteDesignScreenState extends State<WebsiteDesignScreen> {
 

  // ignore: non_constant_identifier_names
  Future apicall(String Url) async {
    listResponse = [];
    http.Response response;
   
    response =
        await http.get(Uri.parse("https://backend.fingerprintm.com/api/$Url"));
    if (response.statusCode == 200) {
      setState(() {
        //stringResponse =  response.body;
        mapResponse = jsonDecode(response.body);
        //dataResponse = mapResponse["data"];
        listResponse = mapResponse["data"];
      });
    }
  }

  @override
  void initState() {
    apicall(widget.url);
    //servicestrack("${widget.name}");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    Size size = MediaQuery.of(context).size;
    final height = MediaQuery.of(context).size.height;

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
                          width: 60,
                          height: 60,
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
          children: [
            Stack(
              children: [
                Container(
                  color: Colors.black,
                  width: double.infinity,
                  height: height * 0.090,
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
                          ),
                        ),
                        const Text(
                          ">>",
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(fontSize: 12, fontFamily: "Cairo"),
                        ),
                        const SizedBox(width: 2),
                        Text(
                          "Services".tr(),
                          style: const TextStyle(
                              fontFamily: "Cairo",
                              fontSize: 14,
                              color: Colors.white),
                        ),
                        const SizedBox(width: 2),
                        const Text(
                          ">>",
                          style: TextStyle(
                              fontSize: 12,
                              fontFamily: "Cairo",
                              color: Colors.white),
                        ),
                        // const SizedBox(width: 5),
                        Text(
                          widget.name,
                          overflow: TextOverflow.clip,
                          style: TextStyle(
                              fontSize: width * 0.027, color: Colors.white),
                        ),
                      ]),
                ),
              ],
            ),
            const SizedBox(height: 100),
            ListView.builder(
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                itemCount: //images.length,
                    listResponse == null ? 0 : listResponse.length,
                itemBuilder: (context, index) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: width * 0.93,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          children: [
                            ClipRRect(
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(18),
                                  topRight: Radius.circular(18),
                                ),
                                child: Material(
                                  child: InkWell(
                                    onTap: () {
                                      launch(listResponse[index]["url"]);
                                    },
                                    child: Image.network(
                                      //"${images[index]['image']}",
                                      "https://backend.fingerprintm.com/images/${listResponse[index]['photo']}"
                                          .toString(),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                )),
                            Container(
                              width: size.width * 0.93,
                              decoration: BoxDecoration(
                                borderRadius: const BorderRadius.only(
                                  bottomLeft: Radius.circular(18),
                                  bottomRight: Radius.circular(18),
                                ),
                                color: Theme.of(context).splashColor,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      TextButton(
                                          onPressed: () {
                                            launch(listResponse[index]["url"]);
                                          },
                                          child: Text(
                                            //"${images[index]['name']}"
                                            listResponse[index][translator
                                                            .currentLanguage ==
                                                        'en'
                                                    ? 'name_en'
                                                    : 'name_ar']
                                                .toString(),
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontFamily: "Cairo",
                                                color: Theme.of(context)
                                                    .unselectedWidgetColor),
                                          )),
                                      TextButton(
                                        onPressed: null,
                                        child: Text(
                                          //"${images[index]['name']}",
                                          listResponse[index][
                                                  translator.currentLanguage ==
                                                          'en'
                                                      ? 'description_en'
                                                      : 'description_ar']
                                              .toString(),
                                          overflow: TextOverflow.clip,
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontFamily: "Cairo",
                                              color:
                                                  Theme.of(context).canvasColor,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ),
                                    ],
                                  ),
                                  ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                      maximumSize: size / 2,
                                      backgroundColor: const Color(0xffffbc01),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        const Icon(Icons.arrow_back),
                                        Text(
                                          "bottonyspace".tr(),
                                          overflow: TextOverflow.clip,
                                          style: const TextStyle(
                                              fontSize: 15,
                                              fontFamily: "Cairo",
                                              fontWeight: FontWeight.w700,
                                              color: Colors.white),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 15,
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      )
                    ],
                  );
                }),
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
        ),
      ),
    );
  }
}
