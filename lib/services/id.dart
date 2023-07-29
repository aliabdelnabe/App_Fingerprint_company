import 'dart:convert';
import 'package:http/http.dart' as http;


class Services{
  Future getId() async{
  Uri url = Uri.parse("https://backend.fingerprintm.com/api/getPosts?page=1");
  http.Response response = await http.get(url);
Map<String,dynamic> data=jsonDecode(response.body);
  }
}