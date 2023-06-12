// ignore_for_file: non_constant_identifier_names

import 'package:arabic_english_app/screens/Advantages%20of%20creating%20a%20special%20programming%20website.dart';
import 'package:arabic_english_app/screens/What%20are%20the%20disadvantages%20of%20WordPress.dart';
import 'package:arabic_english_app/screens/mobile_body.dart';
import 'package:arabic_english_app/widget/foter_bar.dart';
import 'package:arabic_english_app/widget/my_heardre_drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:localize_and_translate/localize_and_translate.dart';

class Blog extends StatefulWidget {
  const Blog({super.key});

  @override
  State<Blog> createState() => _BlogState();
}

class _BlogState extends State<Blog> {
  List <String> itemsList = [
    "Section",
    "Website design and hosting",
    "content writing",
    "Design and devielpment",
    "Social Media designs",
    "Advertising photography",
    "advertisements",
    "Motion Graphic",
    ];
   bool Section = false;
   bool Website =false;
   bool content =false;
   bool Design =false;
   bool Social =false;
   bool Advertising =false;
   bool advertisements =false;
   bool Motion =false;

  @override

  Widget build(BuildContext context) {
   // bool _obscureTex  = true;
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
                    height: 400,
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
                        size: 60,
                        ),
                        ),
                        const Text(
                        ">>",
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 40,
                          fontFamily: "Cairo",
                          color: Colors.white
                        ),
                        ),
                        const SizedBox(width: 5),
                        Text(
                        "blog".tr(),
                      style:const TextStyle(
                        fontFamily: "Cairo",
                        fontSize: 50,
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                      ),
                      ),
                    ]
                  ),
            ),
            ],
          ),
          
          const SizedBox(height: 60,),
          SizedBox(width: 20,),
          Container(
            width: width * 0.90,
            padding: const EdgeInsets.only(
            left: 10,
            right: 10,
            ),
                              decoration: BoxDecoration(
                              color: Theme.of(context).backgroundColor,
                              borderRadius: BorderRadius.circular(10)
                            ),
                              child: TextField(
                            decoration: InputDecoration(
                                hintText: "search".tr(),
                                hintStyle: TextStyle(
                                  fontSize: 15,
                                  fontFamily: "Cairo",color: Theme.of(context).toggleableActiveColor
                                ),
                                suffixIcon: Icon(Icons.search_sharp,
                                color: Theme.of(context).toggleableActiveColor
                                ),
                              enabledBorder: InputBorder.none,
                              focusedBorder: InputBorder.none,
                        ),
                      ),
                    ),
                    const SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const SizedBox(width: 20),
                        Text("section".tr()
                                ,style:const TextStyle(
                                  fontSize: 30,
                                  fontFamily: "Cairo",
                                  fontWeight: FontWeight.w800,
                                  color: Colors.amber
                                ),
                                ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Container(
                      padding: const EdgeInsets.all(15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            decoration:const BoxDecoration(
                              color: Colors.amber
                            ),
                            width: 165,
                            height: 8,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Theme.of(context).toggleableActiveColor
                            ),
                            width: 165,
                            height: 0.6,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    
                      Container(
                        width: double.infinity,
                        height: 460,
                        child: Column(
                          children: [
                           CheckboxListTile(
                            selected: itemsList == 0,
                      value: Section , 
                      onChanged: (newValue){
                        setState(() {
                          Section = newValue!;
                        });
                      },
                      checkColor: Colors.white,
                      activeColor: Colors.blue,
                      // ignore: deprecated_member_use
                      selectedTileColor:Theme.of(context).toggleableActiveColor,
                      title: Text(itemsList[0].tr(),
                      style: TextStyle(
                        // ignore: deprecated_member_use
                        color: Theme.of(context).toggleableActiveColor,
                        fontFamily: "Cairo",
                        fontSize: 16,
                        fontWeight: FontWeight.w600
                      ),
                      ),
                      ),
                      CheckboxListTile(
                            selected: itemsList == 1,
                      value: Website , 
                      onChanged: (newValue){
                        setState(() {
                          Website = newValue!;
                        });
                      },
                      checkColor: Colors.white,
                      activeColor: Colors.blue,
                      // ignore: deprecated_member_use
                      selectedTileColor:Theme.of(context).toggleableActiveColor,
                      title: Text(itemsList[1].tr(),
                      style: TextStyle(
                        // ignore: deprecated_member_use
                        color: Theme.of(context).toggleableActiveColor,
                        fontFamily: "Cairo",
                        fontSize: 16,
                        fontWeight: FontWeight.w600
                      ),
                      ),
                      ),
                      CheckboxListTile(
                            selected: itemsList == 2,
                      value: content , 
                      onChanged: (newValue){
                        setState(() {
                          content = newValue!;
                        });
                      },
                      checkColor: Colors.white,
                      activeColor: Colors.blue,
                      // ignore: deprecated_member_use
                      selectedTileColor:Theme.of(context).toggleableActiveColor,
                      title: Text(itemsList[2].tr(),
                      style: TextStyle(
                        // ignore: deprecated_member_use
                        color: Theme.of(context).toggleableActiveColor,
                        fontFamily: "Cairo",
                        fontSize: 16,
                        fontWeight: FontWeight.w600
                      ),
                      ),
                      ),
                      CheckboxListTile(
                            selected: itemsList == 3,
                      value: Design , 
                      onChanged: (newValue){
                        setState(() {
                          Design = newValue!;
                        });
                      },
                      checkColor: Colors.white,
                      activeColor: Colors.blue,
                      // ignore: deprecated_member_use
                      selectedTileColor:Theme.of(context).toggleableActiveColor,
                      title: Text(itemsList[3].tr(),
                      style: TextStyle(
                        // ignore: deprecated_member_use
                        color: Theme.of(context).toggleableActiveColor,
                        fontFamily: "Cairo",
                        fontSize: 16,
                        fontWeight: FontWeight.w600
                      ),
                      ),
                      ),
                      CheckboxListTile(
                            selected: itemsList == 4,
                      value: Social , 
                      onChanged: (newValue){
                        setState(() {
                          Social = newValue!;
                        });
                      },
                      checkColor: Colors.white,
                      activeColor: Colors.blue,
                      // ignore: deprecated_member_use
                      selectedTileColor:Theme.of(context).toggleableActiveColor,
                      title: Text(itemsList[4].tr(),
                      style: TextStyle(
                        // ignore: deprecated_member_use
                        color: Theme.of(context).toggleableActiveColor,
                        fontFamily: "Cairo",
                        fontSize: 16,
                        fontWeight: FontWeight.w600
                      ),
                      ),
                      ),
                      CheckboxListTile(
                            selected: itemsList == 5,
                      value: Advertising , 
                      onChanged: (newValue){
                        setState(() {
                          Advertising = newValue!;
                        });
                      },
                      checkColor: Colors.white,
                      activeColor: Colors.blue,
                      // ignore: deprecated_member_use
                      selectedTileColor:Theme.of(context).toggleableActiveColor,
                      title: Text(itemsList[5].tr(),
                      style: TextStyle(
                        // ignore: deprecated_member_use
                        color: Theme.of(context).toggleableActiveColor,
                        fontFamily: "Cairo",
                        fontSize: 16,
                        fontWeight: FontWeight.w600
                      ),
                      ),
                      ),
                      CheckboxListTile(
                            selected: itemsList == 6,
                      value: advertisements , 
                      onChanged: (newValue){
                        setState(() {
                          advertisements = newValue!;
                        });
                      },
                      checkColor: Colors.white,
                      activeColor: Colors.blue,
                      // ignore: deprecated_member_use
                      selectedTileColor:Theme.of(context).toggleableActiveColor,
                      title: Text(itemsList[6].tr(),
                      style: TextStyle(
                        // ignore: deprecated_member_use
                        color: Theme.of(context).toggleableActiveColor,
                        fontFamily: "Cairo",
                        fontSize: 16,
                        fontWeight: FontWeight.w600
                      ),
                      ),
                      ),
                      CheckboxListTile(
                            selected: itemsList == 7,
                      value: Motion ,
                      onChanged: (newValue){
                        setState(() {
                          Motion = newValue!;
                        });
                      },
                      checkColor: Colors.white,
                      activeColor: Colors.blue,
                      // ignore: deprecated_member_use
                      selectedTileColor:Theme.of(context).toggleableActiveColor,
                      title: Text(itemsList[7].tr(),
                      style: TextStyle(
                        // ignore: deprecated_member_use
                        color: Theme.of(context).toggleableActiveColor,
                        fontFamily: "Cairo",
                        fontSize: 16,
                        fontWeight: FontWeight.w600
                      ),
                      ),
                      ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 30),
                      Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const SizedBox(width: 20),
                        Text("most viewed".tr()
                                ,style:const TextStyle(
                                  fontSize: 30,
                                  fontFamily: "Cairo",
                                  fontWeight: FontWeight.w800,
                                  color: Colors.amber,
                                ),
                                ),
                      ],
                    ),
                    Container(
                      padding: const EdgeInsets.all(15),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                decoration:const BoxDecoration(
                                  color: Colors.amber
                                ),
                                width: 215,
                                height: 8,
                              ),
                             /* Container(
                                decoration: BoxDecoration(
                                  color: Theme.of(context).toggleableActiveColor
                                ),
                                width: 162,
                                height: 0.6,
                              ), */
                            ],
                          ),
                        Container(
                          decoration: BoxDecoration(
                            color: Theme.of(context).scaffoldBackgroundColor,
                            boxShadow:const [BoxShadow(
                              offset: Offset(-0, 0),
                              blurStyle:BlurStyle.outer,
                              blurRadius: 2,
                              color: Colors.grey,
                              spreadRadius: 0

                            )]
                          ),
                          width: double.infinity,
                          height: 345,
                          child: Column(
                            children: [
                              TextButton(
                                onPressed: (){
                                    Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                    builder: (context) => const WhitAreTheDisadvantages()));
                                },
                                child: Container(
                                  padding: const EdgeInsets.all(1),
                                  width: double.infinity,
                                  height: 150,
                                  child: Row(
                                    children: [
                                      Container(
                                        width: width*0.35,
                                        child: Image.asset(
                                          "assets/images/622.jpg",
                                          fit: BoxFit.cover,
                                          ),
                                          ),
                                          const SizedBox(width: 10),
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Text(
                                          "What are the".tr(),
                                              style:const TextStyle(
                                                fontSize: 14,
                                                fontFamily: "Cairo",
                                                fontWeight: FontWeight.w800,
                                                color: Colors.amber
                                              ),
                                              overflow: TextOverflow.ellipsis,
                                              ),
                                              Row(
                                                children: [
                                                   Container(
                                                    width: 15,
                                                    height: 15,
                                                    child: Image.asset(
                                                      "assets/icons/611.png",
                                                      fit: BoxFit.cover,
                                                      color: Colors.grey,
                                                      ),
                                                      ),
                                                  const Text(
                                                    " 05-03-2023",
                                                  style:const TextStyle(
                                                    fontSize: 15,
                                                    fontFamily: "Cairo",
                                                    fontWeight: FontWeight.w600,
                                                    color: Colors.amber
                                                  ),
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                    ],
                                  ),
                                ),
                              ),
                              const Divider(
                                          color: Colors.grey,
                                          height: 10,
                                          thickness: 0.5,
                                          indent: 5,
                                        ),
                                        TextButton(
                                onPressed: (){
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                    builder: (context) => const AdvantagesOfCreatingASpecialProgrammingWebsite()));
                                },
                                child: Container(
                                  padding: const EdgeInsets.all(1),
                                  width: double.infinity,
                                  height: 150,
                                  child: Row(
                                    children: [
                                      Container(
                                        width: width*0.34,
                                        height: 100,
                                        child: Image.asset(
                                          "assets/images/623.jpg",
                                          fit: BoxFit.cover,
                                          ),
                                          ),
                                          const SizedBox(width: 10),
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                "Advantages".tr(),
                                              style:const TextStyle(
                                                fontSize: 15,
                                                fontFamily: "Cairo",
                                                fontWeight: FontWeight.w800,
                                                color: Colors.amber
                                              ),
                                              overflow: TextOverflow.ellipsis,
                                              ),
                                              Row(
                                                children: [
                                                   Container(
                                                    width: 15,
                                                    height: 15,
                                                    child: Image.asset(
                                                      "assets/icons/611.png",
                                                      fit: BoxFit.cover,
                                                      color: Colors.grey,
                                                      ),
                                                      ),
                                                  const Text(
                                                    " 05-03-2023",
                                                  style:const TextStyle(
                                                    fontSize: 15,
                                                    fontFamily: "Cairo",
                                                    fontWeight: FontWeight.w600,
                                                    color: Colors.amber
                                                  ),
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                        ],
                      ),
                    ),
                    const SizedBox(height: 40),
                    Container(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const SizedBox(width: 10),
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.amber,
                                ),
                                width: 120,
                                height: 50,
                                child:const Center(
                                  child: Text(
                                    "05-03-2023",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontFamily: "Cairo",
                                      fontWeight: FontWeight.w600,
                                    ),
                                    ),
                                ),
                              ),
                            ],
                          ),
                          TextButton(
                            onPressed: (){
                              Navigator.push(
                              context,
                              MaterialPageRoute(
                              builder: (context) => const WhitAreTheDisadvantages()));
                            },
                            child: Image.asset("assets/images/622.jpg",
                            fit: BoxFit.cover,
                            height: 200,
                            ),
                          ),
                          const SizedBox(height: 10),
                          //السم الصاحب المدونه وصورته وزر التعلقات
                          Row(
                            children: [
                            const SizedBox(width: 10),
                            const CircleAvatar(
                            backgroundImage: AssetImage(
                            "assets/images/624.jpg",
                          ),
                          backgroundColor: Colors.white,
                          radius: 20,
                        ),
                        Text(" Taha Abdelmoneim",
                        style: TextStyle(
                            fontSize: 15,
                            // ignore: deprecated_member_use
                            color: Theme.of(context).toggleableActiveColor,
                            fontFamily: "Cairo",
                            fontWeight: FontWeight.w500
                          ),),
                        const SizedBox(width: 10,),
                        Text(
                          "|",
                          style: TextStyle(
                            fontSize: 25,
                            // ignore: deprecated_member_use
                            color: Theme.of(context).toggleableActiveColor
                          ),
                        ),
                        const SizedBox(width: 10),
                        Container(
                          width: 30,
                          height: 30,
                          child: Image.asset(
                            "assets/icons/comment.png",
                            fit: BoxFit.cover,
                            // ignore: deprecated_member_use
                            color: Theme.of(context).toggleableActiveColor
                            ),
                            ),
                            Text(
                              "comments".tr(),
                              ),
                            ],
                          ),
                        
                        Container(
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextButton(
                                onPressed: (){
                                  Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                  builder: (context) => const WhitAreTheDisadvantages()));
                                },
                                child: Text(
                                "What are the2".tr(),
                                style:const TextStyle(
                                fontSize: 19,
                                fontFamily: "Cairo",
                                fontWeight: FontWeight.w800,
                                color: Colors.amber
                                ),
                                overflow: TextOverflow.ellipsis,
                                ),
                              ),
                              Row(
                                children: [
                                  const SizedBox(width: 7),
                                  Text(
                                    "What are the1".tr(),
                                    style: TextStyle(
                                      fontSize: 13,
                                      fontFamily: "Cairo",
                                      fontWeight: FontWeight.w600,
                                      // ignore: deprecated_member_use
                                      color: Theme.of(context).toggleableActiveColor,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        const SizedBox(height: 40),
                        Row(
                          children: [
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.amber
                              ),
                              onPressed: (){
                                Navigator.push(
                                context,
                                MaterialPageRoute(
                                builder: (context) => const WhitAreTheDisadvantages()));
                              },
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Icon(Icons.arrow_back,color: Colors.white,
                                  size: 18,
                                  ),
                                  const SizedBox(width: 5),
                                  Text(
                                    "read more".tr(),
                                    style:const TextStyle(
                                      fontSize: 18,
                                      fontFamily: "Cairo",
                                      fontWeight: FontWeight.w600
                                    ),
                                    ),
                                ],
                              )
                              ),
                          ],
                        )
                        ],
                      ),
                    ),



                    const SizedBox(height: 100),
                    Container(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const SizedBox(width: 10),
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.amber,
                                ),
                                width: 120,
                                height: 50,
                                child:const Center(
                                  child: Text(
                                    "05-03-2023",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontFamily: "Cairo",
                                      fontWeight: FontWeight.w600,
                                    ),
                                    ),
                                ),
                              ),
                            ],
                          ),
                          TextButton(
                            onPressed: (){
                              Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                    builder: (context) => const AdvantagesOfCreatingASpecialProgrammingWebsite()));
                            },
                            child: Image.asset("assets/images/623.jpg",
                            fit: BoxFit.cover,
                            height: 300,
                            width: width*0.95,
                            ),
                          ),
                          const SizedBox(height: 10),
                          //السم الصاحب المدونه وصورته وزر التعلقات
                           Row(
                            children: [
                            const SizedBox(width: 10),
                            const CircleAvatar(
                            backgroundImage: AssetImage(
                            "assets/images/624.jpg",
                          ),
                          backgroundColor: Colors.white,
                          radius: 20,
                        ),
                        Text(" Taha Abdelmoneim",
                        style: TextStyle(
                            fontSize: 15,
                            // ignore: deprecated_member_use
                            color: Theme.of(context).toggleableActiveColor,
                            fontFamily: "Cairo",
                            fontWeight: FontWeight.w500
                          ),),
                        const SizedBox(width: 10,),
                        Text(
                          "|",
                          style: TextStyle(
                            fontSize: 25,
                            // ignore: deprecated_member_use
                            color: Theme.of(context).toggleableActiveColor
                          ),
                        ),
                        const SizedBox(width: 10),
                        Container(
                          width: 30,
                          height: 30,
                          child: Image.asset(
                            "assets/icons/comment.png",
                            fit: BoxFit.cover,
                            // ignore: deprecated_member_use
                            color: Theme.of(context).toggleableActiveColor
                            ),
                            ),
                            Text(
                              "comments".tr(),
                              ),
                            ],
                          ),
                        Container(
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextButton(
                                onPressed: (){
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                    builder: (context) => const AdvantagesOfCreatingASpecialProgrammingWebsite()));
                                },
                                child: Text(
                                "Advantages1".tr(),
                                style:const TextStyle(
                                fontSize: 19,
                                fontFamily: "Cairo",
                                fontWeight: FontWeight.w800,
                                color: Colors.amber
                                ),
                                overflow: TextOverflow.ellipsis,
                                ),
                              ),
                              Row(
                                children: [
                                  const SizedBox(width: 7),
                                  Text(
                                    "Advantages2".tr(),
                                    style: TextStyle(
                                      fontSize: 13,
                                      fontFamily: "Cairo",
                                      fontWeight: FontWeight.w600,
                                      // ignore: deprecated_member_use
                                      color: Theme.of(context).toggleableActiveColor,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        const SizedBox(height: 40),
                        Row(
                          children: [
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.amber
                              ),
                              onPressed: (){
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                    builder: (context) => const AdvantagesOfCreatingASpecialProgrammingWebsite()));
                              },
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Icon(Icons.arrow_back,color: Colors.white,
                                  size: 18,
                                  ),
                                  const SizedBox(width: 5),
                                  Text(
                                    "read more".tr(),
                                    style:const TextStyle(
                                      fontSize: 18,
                                      fontFamily: "Cairo",
                                      fontWeight: FontWeight.w600
                                    ),
                                    ),
                                ],
                              )
                              ),
                          ],
                        )
                        ],
                      ),
                    ),

                    const SizedBox(height: 120),
                    Container(
                      width: double.infinity,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Container(
                                    width: 70,
                                    height: 60,
                                    decoration: BoxDecoration(
                                      color: Colors.grey,
                                      borderRadius: BorderRadius.circular(10)
                                    ),
                                    child: Center(
                                        child: Container(
                                          width: 40,
                                          height: 40,
                                          child: Image.asset("assets/icons/right-arrow.png",
                                          fit: BoxFit.cover,
                                          color:const Color.fromARGB(255, 70, 79, 97),
                                          ),
                                        )
                                      ),
                                  ),
                                  const SizedBox(width: 15),
                                  TextButton(
                                    onPressed: (){},
                                    child: Container(
                                      width: 45,
                                      height: 60,
                                      decoration: BoxDecoration(
                                        color: Colors.amber,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child:const Center(
                                        child: Text(
                                          "1",
                                          style: TextStyle(
                                            fontSize: 30,
                                            fontFamily: "Cairo",
                                            fontWeight: FontWeight.w600,
                                            color: Colors.white
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 15),
                                  Container(
                                    width: 70,
                                    height: 60,
                                    decoration: BoxDecoration(
                                      color: Colors.grey,
                                      borderRadius: BorderRadius.circular(10)
                                    ),
                                    child: Center(
                                        child: Container(
                                          width: 40,
                                          height: 40,
                                          child: Image.asset("assets/icons/right-arrow (1).png",
                                          fit: BoxFit.cover,
                                          color:const Color.fromARGB(255, 70, 79, 97),
                                          ),
                                        )
                                      ),
                                  ),
                                  const SizedBox(width: 15),
                                ],
                              ),
                              const SizedBox(height: 20),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Container(
                                    width: 120,
                                    height: 60,
                                    decoration: BoxDecoration(
                                      color: Colors.grey,
                                      borderRadius: BorderRadius.circular(10)
                                    ),
                                    child:const Center(
                                        child: Text(
                                          "1/1",
                                          style: TextStyle(
                                            fontSize: 35,
                                            fontFamily: "Cairo",
                                            color:  Color.fromARGB(255, 87, 94, 109),
                                          ),
                                        )
                                      ),
                                  ),
                                  const SizedBox(width: 15),
                                  
                                  const SizedBox(width: 15),
                                  Container(
                                    width: 70,
                                    height: 55,
                                    decoration: BoxDecoration(
                                      color: Colors.grey,
                                      borderRadius: BorderRadius.circular(10)
                                    ),
                                    child:const Center(
                                        child: Text(
                                          "2",
                                          style: TextStyle(
                                            fontSize: 30,
                                            fontFamily: "Cairo",
                                            fontWeight: FontWeight.w700,
                                            color:  Color.fromARGB(255, 112, 121, 141),
                                          ),
                                        )
                                      ),
                                  ),
                                  const SizedBox(width: 15),
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),

          const SizedBox(height: 70),
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
      ),
    ],
  ),
    );
  }
}