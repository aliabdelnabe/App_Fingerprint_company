
import 'package:arabic_english_app/screens/mobile_body.dart';
import 'package:arabic_english_app/widget/social_media_widget.dart';
import 'package:flutter/material.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:url_launcher/url_launcher.dart';

class WriteReview extends StatefulWidget {
  const WriteReview({super.key});

  @override
  State<WriteReview> createState() => _WriteReviewState();
}

class _WriteReviewState extends State<WriteReview> {
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
  String? selectedItem = "Section";
  TextEditingController
  _textController =
  TextEditingController();
  @override
  Widget build(BuildContext context) {
     final width = MediaQuery.of(context).size.width;
    Size size = MediaQuery.of(context).size;
    return  Container(
              width: double.infinity,
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
                    width: double.infinity,
                    decoration: BoxDecoration(
                      boxShadow:const [
                        BoxShadow(
                          offset: Offset(0, 0),
                          blurRadius: 5
                        )
                      ],
                      borderRadius:const BorderRadius.only(
                        bottomLeft: Radius.circular(25),
                        bottomRight: Radius.circular(25),
                      ),
                        color:Theme.of(context).dividerColor,
                    ),
                    child: Column(
                      children: [
                        const SizedBox(height: 25,),
                              Text("Write your review".tr()
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
                                "select a section".tr(),
                                style: TextStyle(
                                  fontSize: 15,
                                   fontWeight: FontWeight.w600,
                                  color: Theme.of(context).canvasColor,
                                  fontFamily: "Cairo"
                                ),
                              ),
                              const SizedBox(height: 5,),
                              Row(
                  children: [
                     Expanded(
                      child: Container(
                        padding: const EdgeInsets.only(
                          right: 10,
                          left: 10
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Theme.of(context).backgroundColor,
                        ),
                        child: DropdownButtonFormField<String>(
                          isDense: true,
                      isExpanded: true,
                      autovalidateMode: AutovalidateMode.disabled,
                      elevation: 4,
                      borderRadius:BorderRadius.circular(15),
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: 
                                  BorderSide(width: 20,color: Theme.of(context).backgroundColor,)
                          )
                        ),
                        dropdownColor: Theme.of(context).backgroundColor,
                        value: selectedItem,
                        items: itemsList
                        .map((item) => DropdownMenuItem(
                          value: item,
                          child: Text(item.tr(), style: const TextStyle(fontSize: 11.85),),
                        )).toList(),
                        onChanged: (item) =>setState(()=> selectedItem = item), 
                      ),
                                
                        ),
                      ),
                  ],
                              ),
                              const SizedBox(height: 20),
                              Text(
                                "Write your review here...".tr(),
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                  color: Theme.of(context).canvasColor,
                                  fontFamily: "Cairo"
                                ),
                              ),
                              const SizedBox(height: 5,),
                              Container(
                                padding: const EdgeInsets.only(
                                  right: 8,
                                  left: 8
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Theme.of(context).backgroundColor,
                                ),
                                child: TextFormField(
                                  controller: _textController,
                                  minLines: 7,
                                  maxLines: 8,
                                  keyboardType: TextInputType.multiline,
                                  decoration: InputDecoration(
                                    hintText: "Write your review here...".tr(),
                                    hintStyle:const TextStyle(
                                      fontSize: 13,
                                      color: Colors.grey,
                                      fontFamily: "Cairo",
                                      fontWeight: FontWeight.w600
                                    ),
                                    border:const OutlineInputBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(10))
                                    ),
                                    enabledBorder: InputBorder.none,
                                                        focusedBorder: InputBorder.none,
                                  ),
                                ),
                              ),
                  const SizedBox(height: 15,),
                            ],
                          ),
                        ),
                        // زر الارسال
                        Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor:const Color.fromARGB(255, 255, 202, 58),
                            ),
                            onPressed: (){},
                            child: Text("send".tr(),
                             style:const TextStyle(
                          fontSize: 17,
                            fontFamily: "Cairo",
                            fontWeight: FontWeight.w900,
                            color: Color.fromARGB(255, 109, 78, 172),
                        ),
                            ),
                            ),
                        ],
                      ),
                      const SizedBox(height:20 ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                      // رقم الهاتف الشركه
                      Container(
                        width: double.infinity,
                        child: 
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                TextButton(
                                  onPressed: (){
                                    launch('tel:+201090844348');
                                  },
                                  child:const Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("201090844348",
                                      style: TextStyle(
                                        color: Color(0XFF9e0080),
                                        fontSize: 17,
                                        fontFamily: "Cairo",
                                        fontWeight: FontWeight.w600
                                      ),
                                      ),
                                      Icon(Icons.call_rounded,color: Color(0XFF9e0080),),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                      ),
                      //تواصل معنا
                      Container(
                        width: double.infinity,
                        child: 
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                TextButton(
                                  onPressed: (){
                                    Navigator.push(
                      context,
                      MaterialPageRoute(
                      builder: (context) => const MyMobileBody()));
                                  },
                                  child:const Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("info@fingerprintm.com",
                                      style: TextStyle(
                                        color: Color(0XFF9e0080),
                                        fontSize: 17,
                                        fontFamily: "Cairo",
                                        fontWeight: FontWeight.w600
                                      ),
                                      ),
                                      Icon(Icons.email_rounded,color: Color(0XFF9e0080),),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                      ),
                      // مواقع التواصل
                      const SizedBox(height: 6),
                      SocialMediaWidget(),
                      const SizedBox(height: 30)
                      ],
                        ),
                      ],
                    ),
                  ),
              ],
              ),
          );
  }
}
  


