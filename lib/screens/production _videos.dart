
import 'package:arabic_english_app/screens/mobile_body.dart';
import 'package:arabic_english_app/widget/foter_bar.dart';
import 'package:arabic_english_app/widget/my_heardre_drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';
import 'package:localize_and_translate/localize_and_translate.dart';


class CardItem {
  final String urlImage;
  final String title;
  final String titleData;

  const CardItem(
    {
      required this.urlImage, 
      required this.title, 
      required this.titleData
});
}

class ProductionVideos extends StatefulWidget {
  const ProductionVideos({super.key});


  @override
  State<ProductionVideos> createState() => _ProductionVideosState();
}
// ignore: unused_element
  Future<void> _handleRefresh()  async {
    
    return await Future.delayed(const Duration(seconds: 1));
  }


late final PageController  pageController;
  int pagNo = 0;
class _ProductionVideosState extends State<ProductionVideos> {
  List images = [
    


  ];
 
  @override
  Widget build(BuildContext context) {
    
    final width = MediaQuery.of(context).size.width;
    Size size = MediaQuery.of(context).size;

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
                  width: 60,
                  height: 60,
              child: const Image(
                height: 50,
                width: 40,
                fit: BoxFit.cover,
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
        child: LiquidPullToRefresh(
              onRefresh: _handleRefresh,
              color:Theme.of(context).selectedRowColor,
              backgroundColor: Colors.white,//Theme.of(context).highlightColor,
              animSpeedFactor: 1,
              showChildOpacityTransition: true,
          child:
            
              SingleChildScrollView(
                child: Column(
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
                        Text("text8".tr(),
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
          const SizedBox(height: 100),
                    ListView.builder(
                      shrinkWrap: true,
                      physics: const BouncingScrollPhysics(),
                      itemCount: images.length,
                      itemBuilder: ( BuildContext context, int index) {
                        return  Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                      width: width * 0.93,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius:const BorderRadius.only(
                              topLeft: Radius.circular(18),
                              topRight: Radius.circular(18),
                            ),
                            child: Material(
                              child: InkWell(
                                child: Image.asset(
                                  "${images[index]['image']}",
                                  fit: BoxFit.cover,
                                  
                                ),
                              ),
                            )
                          ),
                          Container(
                            width: size.width * 0.93,
                            decoration: BoxDecoration(
                              borderRadius:const BorderRadius.only(
                                bottomLeft: Radius.circular(18),
                                bottomRight: Radius.circular(18),
                              ),
                                color:Theme.of(context).splashColor,
                            ),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    TextButton(
                                      onPressed: (){},
                                      child: Text("${images[index]['name']}".tr()
                                      ,style: TextStyle(
                                        fontSize: 20,
                                        fontFamily: "Cairo",
                                        color: Theme.of(context).unselectedWidgetColor
                                      ),
                                      )),
                                      TextButton(
                                        onPressed: null,
                                        child: Text("${images[index]['title']}".tr(),
                                        overflow: TextOverflow.clip,
                                        style: TextStyle(
                                          fontSize:14,
                                          fontFamily: "Cairo",
                                          color: Theme.of(context).canvasColor,
                                          fontWeight: FontWeight.w600
                                        ),
                                        ),
                                      ),
                                  ],
                                ),
                                ElevatedButton(
                                    onPressed: (){},
                                  style: ElevatedButton.styleFrom(
                                    maximumSize:size /2,
                                    backgroundColor: const Color(0xffffbc01),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                       const Icon(Icons.arrow_back),
                                      Text("bottonyspace".tr(),
                                      overflow: TextOverflow.clip,
                                      style:const TextStyle(
                                        fontSize: 15,
                                        fontFamily: "Cairo",
                                        fontWeight: FontWeight.w700,
                                        color: Colors.white
                                      ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 15,)
                              ],
                            ),
                          ),
                          
                        ],
                      ),
                    ),
                    const SizedBox(height: 90,),
              
                        ],
                        );
                      }
                    ),
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
                ),
              ),

        ),
      ),
      
    ],
  ),
    );
  }

  
}
