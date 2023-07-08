import 'package:flutter/material.dart';
import 'package:localize_and_translate/localize_and_translate.dart';

import '../screens/mobile_body.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

String stringResponse = "";
  Map <String, dynamic>  mapResponse = {};
  Map <String, dynamic>  dataResponse = {};
  List  listResponse=[];

class ServicesTrack extends StatefulWidget {
  const ServicesTrack({super.key});

  @override
  State<ServicesTrack> createState() => _ServicesTrackState();
}

class _ServicesTrackState extends State<ServicesTrack> {
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
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount:listResponse.length,
      itemBuilder: (context, index) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
                  children:[
                   Container(
      color: Colors.black,
      width: double.infinity,
      height: 70,
      child:Image.asset(
            "assets/images/breadcrumb.cad63821.jpeg",
            fit: BoxFit.cover,
            ) ,
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
              child:const Icon(Icons.home_outlined,
              color: Colors.white,
              ),
              ),
              const Text(
              ">>",
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 12,
                fontFamily: "Cairo"
              ),
              ),
              const SizedBox(width: 2),
              Text(
              "Services".tr(),
            style:const TextStyle(
              fontFamily: "Cairo",
              fontSize: 14,
              color: Colors.white
            ),
            ),
            const SizedBox(width: 2),
             const Text(
              ">>",
              style: TextStyle(
                fontSize: 12,
                fontFamily: "Cairo",
                color: Colors.white
              ),
              ),
              const SizedBox(width: 5),
              Text(
                listResponse[index][translator.currentLanguage == 'en' ? 'name_en':'name_ar'].toString(),
                  style:const TextStyle(
                  fontSize: 12,
                  color: Colors.white
            ),
            ),
      ]
                  ),
            ),
            ],
      ),
          ],
        );
      },
    );
  }
}