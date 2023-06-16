import 'package:arabic_english_app/screens/mobile_body.dart';
import 'package:arabic_english_app/screens/register.dart';
import 'package:arabic_english_app/widget/foter_bar.dart';
import 'package:arabic_english_app/widget/my_heardre_drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:localize_and_translate/localize_and_translate.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  bool _obscureTex  = true;
  bool _isChecked  = false ;
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
    elevation: 5,
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
            child: const Image(
            image: AssetImage("assets/images/logo-transparent.png"),
            color: Colors.white,
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
  body:  Column(
    children: [
      Expanded(
        child: ListView.builder(
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
                        "login".tr(),
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
            height: 1850,
              child: Column(
              children: [
                ClipRRect(
                  borderRadius:const BorderRadius.only(
                    topLeft: Radius.circular(18),
                    topRight: Radius.circular(18),
                  ),
                  child: Image.asset(
                    "assets/images/login_small.39998a84.png",
                    fit: BoxFit.cover,
                    filterQuality:FilterQuality.high,
                  ),
                ),
                Container(
                  height: 740,
                  width: size.width * 0.93,
                  decoration: BoxDecoration(
                    borderRadius:const BorderRadius.only(
                      bottomLeft: Radius.circular(18),
                      bottomRight: Radius.circular(18),
                    ),
                      color:Theme.of(context).primaryColorDark,
                  ),
                  child: Column(
                    children: [
                      const SizedBox(height: 25,),
                            Text("WelcomeBack".tr()
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
                        color: Theme.of(context).backgroundColor,
                      ),
                      child:const TextField(
                        decoration: InputDecoration(
                          hintText: "name@example.com",
                          hintStyle: TextStyle(
                            color: Colors.grey,
                          ),
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                        ),
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
                              color: Theme.of(context).backgroundColor,
                            ),
                              child: TextField(
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
                      ),
                    ),
                  ),
                ],
              ),
                const SizedBox(height: 15,),
                  TextButton(
                    onPressed: (){},
                    child:Text(
                      "Forgotyourpassword".tr(),
                      style:const TextStyle(
                        color: Colors.redAccent,
                        fontFamily: "Cairo",
                        fontSize: 15,
                        fontWeight: FontWeight.w600
                      ),
                      )
                    ),
                    const SizedBox(height: 15,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color.fromARGB(255, 255, 202, 58),
                          ),
                          onPressed: (){},
                          child: Text("login".tr(),
                           style: const TextStyle(
                        fontSize: 17,
                          fontFamily: "Cairo",
                          fontWeight: FontWeight.w900,
                          color: Color.fromARGB(255, 109, 78, 172),
                      ),
                          )),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Row(
                      children: [
                        Checkbox( 
              value: _isChecked,
              activeColor: Colors.black,
              onChanged: (newBool){
                setState(() {
                  _isChecked =newBool!;
                });
              }
              ),
              Text(
                "rememberme".tr(),
                style: TextStyle(
                          fontSize: 14,
                          fontFamily: "Cairo",
                          fontWeight: FontWeight.w600,
                          color: Theme.of(context).canvasColor
                        ),
                ),
                      ],
                    ),
                    TextButton(
                    onPressed: (){},
                    child:Text(
                      "Forgotyourpassword".tr(),
                      style:const TextStyle(
                        color: Colors.redAccent,
                        fontFamily: "Cairo",
                        fontSize: 14,
                        fontWeight: FontWeight.w600
                      ),
                      )
                    ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: width* 0.23,
                              height: 5,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: const Color.fromARGB(255, 109, 78, 172),
                              ),
                            ),
                            SizedBox(width: width / 90,),
                            Text(
                              "or through".tr(),
                              style:const TextStyle(
                                fontSize: 21,
                                fontFamily: "Cairo",
                                fontWeight: FontWeight.w700,
                                color: Color.fromARGB(255, 109, 78, 172),
                              ),
                              ),
                              SizedBox(width: width / 90),
                              Container(
                              width: width * 0.23,
                              height: 5,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color:const Color.fromARGB(255, 109, 78, 172),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 65,
                              height: 65,
                             child: TextButton(
                              onPressed: (){},
                              child: Image.asset(
                                "assets/icons/google.png",
                                fit: BoxFit.cover,
                                ),
                             ),
                            ),
                            const SizedBox(width: 30),
                            Container(
                              width: 70,
                              height: 70,
                              child:  TextButton(
                              onPressed: (){},
                              child: Image.asset(
                                "assets/icons/facebook (3).png",
                                fit: BoxFit.cover,
                                ),
                            ),
                            ),
                          ],
                        ),
                      ],
                    ),
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(10),
                        child: Row(
                            children: [
                              Text(
                                "Donthaveanaccount".tr(),
                                style: TextStyle(
                                  fontSize: 15,
                                  fontFamily: "Cairo",
                                  fontWeight: FontWeight.w600,
                                  color: Theme.of(context).canvasColor
                                  ),
                                ),
                                TextButton(
                                  onPressed: (){
                                     Navigator.push(
                                  context,MaterialPageRoute(
                                  builder: (context) => const Register()));
                                  },
                                  child: Text(
                                    "Create a new account".tr(),
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontFamily: "Cairo",
                                      fontWeight: FontWeight.w600,
                                      color: Theme.of(context).primaryColorLight
                                    ),
                                    ),
                                  ),
                            ],
                          ),
                      )
                    ],
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
}