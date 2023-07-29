
import 'package:arabic_english_app/screens/website%20_design%20_and_hosting.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;




class FingerprintServices1 extends StatefulWidget {
  const FingerprintServices1({super.key, required this.width});

      final double width;

  @override
  State<FingerprintServices1> createState() => _FingerprintServices1State();
}

class _FingerprintServices1State extends State<FingerprintServices1> {
  Future apicall() async {
    http.Response response;
    //response = await http.get(Uri.parse("https://reqres.in/api/users?page=2"));
    response = await http.get(Uri.parse("https://backend.fingerprintm.com/api/getSections?active=true"));
    if (response.statusCode == 200) {
      setState(() {
        //stringResponse =  response.body;
        mapResponse = json.decode(response.body);
        //dataResponse = mapResponse["data"];
        listResponse = mapResponse["data"];
      });
    }
  }
  @override
  void initState () {
    apicall();
    super.initState();
  }
  @override

  Widget build(BuildContext context) {
  final width = MediaQuery.of(context).size.width;

    return Container(
      padding: const EdgeInsets.all(15),
      child: ListView.builder(
        shrinkWrap: true,
        physics:const NeverScrollableScrollPhysics(),
        itemCount: listResponse == null ? 0 :listResponse.length,
        itemBuilder: (context, index) {
          return Column(
          children: [
            Container(
              child: SvgPicture.asset("assets/images/image_service_web.svg",
              fit: BoxFit.cover,
              ),
            ),
          InkWell(
            onTap: (){
              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                  builder: (context) =>  WebsiteDesignScreen(
                                   name: listResponse[index][translator.currentLanguage == 'en' ? 'name_en':'name_ar'].toString(),
                                              url:listResponse[index]["url"],
                                  )));
            },
            child: Text("text8".tr(),
              style:  TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              fontFamily: "Cairo",
              color: Theme.of(context).secondaryHeaderColor,
                                      ),
                                    ),
          ),
          Text("text8 title1".tr(),
                  maxLines: 7,
                  overflow: TextOverflow.ellipsis,
                    style:  TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                    fontFamily: "Cairo",
                    color: Theme.of(context).secondaryHeaderColor,
                  ),
                  ),
                  Text("text8 title2".tr(),
                  maxLines: 7,
                  overflow: TextOverflow.ellipsis,
                    style:  TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                    fontFamily: "Cairo",
                    color: Theme.of(context).secondaryHeaderColor,
                  ),
                  ),
          ],
        );
        },
      ),
    );

  }
}







