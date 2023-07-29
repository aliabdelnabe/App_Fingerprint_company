import 'package:arabic_english_app/controller/log_in.dart';
import 'package:arabic_english_app/screens/mobile_body.dart';
import 'package:arabic_english_app/widget/foter_bar.dart';
import 'package:arabic_english_app/widget/my_heardre_drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:http/http.dart' as http;
import '../constants.dart';
import 'dart:convert';



class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  bool _obscureTex  = true;

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      drawerScrimColor: Theme.of(context).selectedRowColor,
    backgroundColor: Theme.of(context).disabledColor,
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
            child: InkWell(
              onTap:(){
                Navigator.push(
                      context,
                      MaterialPageRoute(
                      builder: (context) => const MyMobileBody()));
              },
              child: const Image(
              image: AssetImage("assets/images/logo-transparent.png"),
              color: Colors.white,
                      ),
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
          physics: const BouncingScrollPhysics(),
          itemCount: 1,
          itemBuilder: (context, index){
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  children:[
                   Container(
                    width: double.infinity,
                    height: 70,
                     color:Theme.of(context).primaryColorDark,
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
                        child: Icon(Icons.home_outlined,
                        color: Theme.of(context).canvasColor,
                        ),
                        ),
                        Text(
                        ">>",
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 14,
                          fontFamily: "Cairo",
                          fontWeight: FontWeight.w600,
                          color: Theme.of(context).canvasColor
                        ),
                        ),
                        const SizedBox(width: 8),
                        Text(
                        "Create a new account".tr(),
                      style: TextStyle(
                        fontFamily: "Cairo",
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color:  Theme.of(context).canvasColor
                      ),
                      ),
                      const SizedBox(width: 2),
                    ]
                  ),
            ),
            ],
          ),
          const SizedBox(height: 40,),
          Container(
              width: size.width * 0.93,
               child: Column(
              children: [
               
                Container(
                  width: size.width * 0.93,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                      color:Theme.of(context).highlightColor,
                  ),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        const SizedBox(height: 25,),
                              Text("Create a new account".tr()
                              ,style: TextStyle(
                                fontSize: 30,
                                fontFamily: "Cairo",
                                fontWeight: FontWeight.w800,
                                color: Theme.of(context).primaryColorLight
                              ),
                              ),
                              const SizedBox(height: 40,),
                        Container(
                          width: size.width*0.80,
                          child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                               Text(
                                "Name".tr(),
                                style: TextStyle(
                                  fontSize: 16,
                                   fontWeight: FontWeight.w500,
                                  color: Theme.of(context).canvasColor,
                                ),
                              ),
                              const SizedBox(height: 10,),
                              Row(
                                  children: [
                     Expanded(
                      child: TextFormField(
                        controller:_nameController,
                        cursorColor:Theme.of(context).toggleableActiveColor,
                        cursorHeight: 15,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(

                          hintText: "frest name".tr(),
                          hintStyle:const TextStyle(
                            color: Colors.grey,
                          ),
                          fillColor: Theme.of(context).bottomAppBarColor,
                          filled:true,
                          enabled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            /*borderSide: BorderSide(
                              color: Theme.of(context).bottomAppBarColor,
                              width: 1,
                              
                            )*/
                          ),
                          focusedBorder: InputBorder.none,
                        ),
                        validator: (value) {
                          if(value!.isEmpty) {
                            return "thes field is required";
                          }
                          return null;
                        },
                      ),
                    ),
                          
                                  ],
                                ),
                                 const SizedBox(height: 15,),
                               Text(
                                "phonenumber".tr(),
                                style: TextStyle(
                                  fontSize: 16,
                                   fontWeight: FontWeight.w500,
                                  color: Theme.of(context).canvasColor,
                                ),
                              ),
                              const SizedBox(height: 10,),
                              Row(
                                  children: [
                     Expanded(
                      child: Container(
                        padding: const EdgeInsets.only(
                          right: 8,
                          left: 8
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Theme.of(context).bottomAppBarColor,
                        ),
                        child: TextFormField(
                          
                          keyboardType: TextInputType.number,
                          controller: _phoneController,
                          decoration:const InputDecoration(
                            hintText: "021025876875",
                            hintStyle: TextStyle(
                              color: Colors.grey,
                            ),
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                          ),
                          validator: (value) {
                            if(value!.isEmpty) {
                              return "thes field is required";
                            }
                            return null;
                          },
                        ),
                      ),
                    ),
                                  ],
                                ),
                                 const SizedBox(height: 15,),
                              Text(
                                "email".tr(),
                                style: TextStyle(
                                  fontSize: 16,
                                   fontWeight: FontWeight.w500,
                                  color: Theme.of(context).canvasColor,
                                ),
                              ),
                              const SizedBox(height: 10,),
                              Row(
                                  children: [
                     Expanded(
                      child: Container(
                        padding: const EdgeInsets.only(
                          right: 8,
                          left: 8
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Theme.of(context).bottomAppBarColor,
                        ),
                        child: TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          controller:_emailController,
                          decoration:const InputDecoration(
                            hintText: "name@example.com",
                            hintStyle: TextStyle(
                              color: Colors.grey,
                            ),
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                          ),
                          validator: (value) {
                            if(value!.isEmpty) {
                              return "thes field is required";
                            }
                            return null;
                          },
                        ),
                      ),
                    ),
                                  ],
                                ),
                              const SizedBox(height: 20),
                              Text(
                                "Password".tr(),
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Theme.of(context).canvasColor,
                                ),
                              ),
                              const SizedBox(height: 10,),
                              Row(
                                children: [
                                Expanded(
                                child: Container(
                                padding: const EdgeInsets.only(
                                right: 7,
                                left: 7
                              ),
                                decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Theme.of(context).bottomAppBarColor,
                              ),
                                child: TextFormField(
                                  controller:_passwordController,
                                  obscureText:_obscureTex ,
                                decoration: InputDecoration(
                                  suffixIcon: 
                                    GestureDetector(
                                      onTap: (){
                                        setState(() {
                                          _obscureTex = ! _obscureTex;
                                        });
                                      },
                                        child: Icon(_obscureTex 
                                        ? Icons.visibility_off_rounded
                                        : Icons.visibility_outlined,
                                        color: Theme.of(context).dialogBackgroundColor,
                                        ),
                                    ),
                                hintText: "*******",
                                hintStyle:const TextStyle(
                                color: Colors.grey,
                                ),
                                enabledBorder: InputBorder.none,
                                focusedBorder: InputBorder.none,
                          ),
                          validator: (value) {
                            if(value!.isEmpty) {
                              return "thes field is required";
                            }
                            return null;
                          },
                        ),
                      ),
                    ),
                                  ],
                                ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SizedBox(height: 20,),
                          Container(
                          width: double.infinity,
                            child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Color.fromARGB(255, 255, 202, 58),
                                  ),
                                  onPressed: (){
                                    _register();
                                  },
                                  child: Text("register".tr(),
                                  style:const TextStyle(
                                fontSize: 17,
                                  fontFamily: "Cairo",
                                  fontWeight: FontWeight.w900,
                                  color: Color.fromARGB(255, 109, 78, 172),
                                                ),
                                  )),
                              ],
                            ),
                          ),
                        ],
                      ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 15),
                        Container(
                          padding: const EdgeInsets.all(10),
                          child: Row(
                              children: [
                                Text(
                                  "Donthaveanaccount2".tr(),
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: "Cairo",
                                    fontWeight: FontWeight.w600,
                                    color: Theme.of(context).canvasColor
                                    ),
                                  ),
                                  TextButton(
                                    onPressed: (){
                                      Navigator.push(
                                    context,MaterialPageRoute(
                                    builder: (context) => const LogIn()));
                                    },
                                    child: Text(
                                      "login".tr(),
                                      style:const TextStyle(
                                        fontSize: 16,
                                      fontFamily: "Cairo",
                                        fontWeight: FontWeight.w600,
                                        color: Color.fromARGB(255, 66, 55, 214),
                                      ),
                                      ),
                                    ),
                              ],
                            ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
              ),
          ),
          const SizedBox(height: 50,),
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
  void _register () async {
    if (_formKey.currentState!.validate()) {
      String name =_nameController.text;
      String phoneNumber =_phoneController.text;
      String email =_emailController.text;
      String password =_passwordController.text;

      http.Response response = 
      await http.post(Uri.parse(endpoint),
      body: json.encode(
        {"name":name,
        "phone":phoneNumber,
        "email":email,
        "password":password,
        }
      )
      );
      if (response.statusCode == 200){
        var body = json.decode(response.body);
        if (!mounted) return;
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text(body["massage"])));

      }


    }
  }
}