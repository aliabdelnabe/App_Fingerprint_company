import 'package:flutter/material.dart';

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
            
          ],
        );
      },
    );
  }
}