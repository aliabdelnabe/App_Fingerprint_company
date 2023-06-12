import 'package:arabic_english_app/screens/mobile_body.dart';
import 'package:arabic_english_app/widget/foter_bar.dart';
import 'package:arabic_english_app/widget/my_heardre_drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:localize_and_translate/localize_and_translate.dart';

class ProductionVideos extends StatelessWidget {
  const ProductionVideos({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      drawerScrimColor: Theme.of(context).selectedRowColor,
    backgroundColor: Theme.of(context).dividerColor,
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
                          fontFamily: "Cairo",
                          color: Colors.white
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
                          fontSize: 13,
                          fontFamily: "Cairo",
                          color: Colors.white
                        ),
                        ),
                        const SizedBox(width: 5),
                        Text("text9".tr(),
                            style:const TextStyle(
                            fontSize: 13,
                            color: Colors.white
                      ),
                      ),
                    ]
                  ),
            ),
            ],
          ),
          const SizedBox(height: 60,),
          const SizedBox(height: 120,),
          FooterBar()
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