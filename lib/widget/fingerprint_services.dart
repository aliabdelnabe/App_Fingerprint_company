import 'package:arabic_english_app/views/website%20_design%20_and_hosting.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

String stringResponse = "";
Map<String, dynamic> mapResponse = {};
Map<String, dynamic> dataResponse = {};
List listResponse = [];

bool _login = false;
bool _isLoading = true;

class FingerprintServices extends StatefulWidget {
  const FingerprintServices({super.key, required this.width});
  final double width;

  @override
  State<FingerprintServices> createState() => _FingerprintServicesState();
}

class _FingerprintServicesState extends State<FingerprintServices> {
  Future apicall() async {
    try {
      http.Response response;
      response = await http.get(Uri.parse(
          "https://backend.fingerprintm.com/api/getSections?active=true"));
      if (response.statusCode == 200) {
        setState(() {
          mapResponse = json.decode(response.body);
          listResponse = mapResponse["data"];
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
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      child: Column(
        children: [
          Container(
            child: SvgPicture.asset(
              "assets/images/image_service_social.svg",
              fit: BoxFit.cover,
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => WebsiteDesignScreen(
                            url: "section/social",
                            name: "social_media_design".tr(),
                          )));
            },
            child: Text(
              "text7".tr(),
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                fontFamily: "Cairo",
                color: Theme.of(context).secondaryHeaderColor,
              ),
            ),
          ),
          Text(
            "text7 title1".tr(),
            maxLines: 7,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w600,
              fontFamily: "Cairo",
              color: Theme.of(context).secondaryHeaderColor,
            ),
          ),
          Text(
            "text7 title2".tr(),
            maxLines: 7,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w600,
              fontFamily: "Cairo",
              color: Theme.of(context).secondaryHeaderColor,
            ),
          ),
        ],
      ),
    );
  }
}
