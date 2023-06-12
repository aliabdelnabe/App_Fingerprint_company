
import 'package:arabic_english_app/screens/mobile_body.dart';
import 'package:flutter/material.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
// ignore: non_constant_identifier_names
Stack Path(BuildContext context) {
    return Stack(
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
                        fontSize: 13,
                        fontFamily: "Cairo"
                      ),
                      ),
                      const SizedBox(width: 2),
                      Text(
                      "Services".tr(),
                    style:const TextStyle(
                      fontFamily: "Cairo",
                      fontSize: 14,
                      color: Colors.white,
                      fontWeight: FontWeight.w600
                    ),
                    ),
                    const SizedBox(width: 2),
                     const Text(
                      ">>",
                      style: TextStyle(
                        fontSize: 13,
                        fontFamily: "Cairo",
                        color: Colors.white
                      ),
                      ),
                      const SizedBox(width: 5),
                      Text("text7".tr(),
                          style:const TextStyle(
                          fontSize: 13,
                          color: Colors.white,
                          fontWeight: FontWeight.w700
                    ),
                    ),
                  ]
                ),
          ),
          ],
        );
  }
